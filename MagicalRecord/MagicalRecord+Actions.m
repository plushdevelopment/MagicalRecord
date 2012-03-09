//
//  ARCoreDataAction.m
//  Freshpod
//
//  Created by Saul Mora on 2/24/11.
//  Copyright 2011 Magical Panda Software. All rights reserved.
//

#import "CoreData+MagicalRecord.h"
#import "NSManagedObjectContext+MagicalRecord.h"
#import <dispatch/dispatch.h>

dispatch_queue_t background_save_queue(void);
void cleanup_save_queue(void);

static dispatch_queue_t coredata_background_save_queue;

dispatch_queue_t background_save_queue()
{
    if (coredata_background_save_queue == NULL)
    {
        coredata_background_save_queue = dispatch_queue_create("com.magicalpanda.magicalrecord.backgroundsaves", 0);
    }
    return coredata_background_save_queue;
}

void cleanup_save_queue()
{
	if (coredata_background_save_queue != NULL)
	{
		dispatch_release(coredata_background_save_queue);
        coredata_background_save_queue = NULL;
	}
}

@implementation MagicalRecord (Actions)

#ifdef NS_BLOCKS_AVAILABLE

+ (void) saveWithBlock:(void (^)(NSManagedObjectContext *localContext))block errorHandler:(void (^)(NSError *))errorHandler
{
    NSManagedObjectContext *mainContext  = [NSManagedObjectContext MR_defaultContext];
    NSManagedObjectContext *localContext = mainContext;
    NSPersistentStoreCoordinator *defaultCoordinator = [NSPersistentStoreCoordinator MR_defaultStoreCoordinator];
    if (![NSThread isMainThread]) 
    {
        
#if kCreateNewCoordinatorOnBackgroundOperations == 1
        NSPersistentStoreCoordinator *localCoordinator = [NSPersistentStoreCoordinator coordinatorWithPersitentStore:[NSPersistentStore defaultPersistentStore]];
        localContext = [NSManagedObjectContext contextThatNotifiesDefaultContextOnMainThreadWithCoordinator:localCoordinator];
#else
        localContext = [NSManagedObjectContext MR_contextForCurrentThread];
        [localContext MR_observeiCloudChangesInCoordinator:defaultCoordinator];
#endif
        [mainContext setMergePolicy:NSMergeByPropertyStoreTrumpMergePolicy];
        [localContext setMergePolicy:NSOverwriteMergePolicy];
    }
    
    block(localContext);
    
    if ([localContext hasChanges]) 
    {
        [localContext MR_saveWithErrorHandler:errorHandler];
    }
    
    [localContext MR_stopObservingiCloudChangesInCoordinator:defaultCoordinator];
    [mainContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
}

+ (void) saveWithBlock:(void(^)(NSManagedObjectContext *localContext))block
{   
    [self saveWithBlock:block errorHandler:NULL];
}

+ (void) saveInBackgroundWithBlock:(void(^)(NSManagedObjectContext *localContext))block
{
    dispatch_async(background_save_queue(), ^{
        [self saveWithBlock:block];
    });
}

+ (void) saveInBackgroundWithBlock:(void(^)(NSManagedObjectContext *localContext))block completion:(void(^)(void))callback
{
    dispatch_async(background_save_queue(), ^{
        [self saveWithBlock:block];
        
        if (callback) 
        {
            dispatch_async(dispatch_get_main_queue(), callback);
        }
    });
}

+ (void) saveInBackgroundWithBlock:(void (^)(NSManagedObjectContext *localContext))block completion:(void (^)(void))callback errorHandler:(void (^)(NSError *))errorHandler
{
    dispatch_async(background_save_queue(), ^{
        [self saveWithBlock:block errorHandler:errorHandler];
        
        if (callback)
        {
            dispatch_async(dispatch_get_main_queue(), callback);
        }
    });
}

#endif

@end