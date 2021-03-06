// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SingleEntityRelatedToMappedEntityUsingDefaults.h instead.

#import <CoreData/CoreData.h>


extern const struct SingleEntityRelatedToMappedEntityUsingDefaultsAttributes {
	__unsafe_unretained NSString *singleEntityRelatedToMappedEntityUsingDefaultsID;
} SingleEntityRelatedToMappedEntityUsingDefaultsAttributes;

extern const struct SingleEntityRelatedToMappedEntityUsingDefaultsRelationships {
	__unsafe_unretained NSString *mappedEntity;
} SingleEntityRelatedToMappedEntityUsingDefaultsRelationships;

extern const struct SingleEntityRelatedToMappedEntityUsingDefaultsFetchedProperties {
} SingleEntityRelatedToMappedEntityUsingDefaultsFetchedProperties;

@class MappedEntity;



@interface SingleEntityRelatedToMappedEntityUsingDefaultsID : NSManagedObjectID {}
@end

@interface _SingleEntityRelatedToMappedEntityUsingDefaults : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SingleEntityRelatedToMappedEntityUsingDefaultsID*)objectID;





@property (nonatomic, strong) NSNumber* singleEntityRelatedToMappedEntityUsingDefaultsID;



@property int16_t singleEntityRelatedToMappedEntityUsingDefaultsIDValue;
- (int16_t)singleEntityRelatedToMappedEntityUsingDefaultsIDValue;
- (void)setSingleEntityRelatedToMappedEntityUsingDefaultsIDValue:(int16_t)value_;

//- (BOOL)validateSingleEntityRelatedToMappedEntityUsingDefaultsID:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) MappedEntity *mappedEntity;

//- (BOOL)validateMappedEntity:(id*)value_ error:(NSError**)error_;





@end

@interface _SingleEntityRelatedToMappedEntityUsingDefaults (CoreDataGeneratedAccessors)

@end

@interface _SingleEntityRelatedToMappedEntityUsingDefaults (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveSingleEntityRelatedToMappedEntityUsingDefaultsID;
- (void)setPrimitiveSingleEntityRelatedToMappedEntityUsingDefaultsID:(NSNumber*)value;

- (int16_t)primitiveSingleEntityRelatedToMappedEntityUsingDefaultsIDValue;
- (void)setPrimitiveSingleEntityRelatedToMappedEntityUsingDefaultsIDValue:(int16_t)value_;





- (MappedEntity*)primitiveMappedEntity;
- (void)setPrimitiveMappedEntity:(MappedEntity*)value;


@end
