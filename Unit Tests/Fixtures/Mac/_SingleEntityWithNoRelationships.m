// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SingleEntityWithNoRelationships.m instead.

#import "_SingleEntityWithNoRelationships.h"

const struct SingleEntityWithNoRelationshipsAttributes SingleEntityWithNoRelationshipsAttributes = {
	.booleanTestAttribute = @"booleanTestAttribute",
	.colorTestAttribute = @"colorTestAttribute",
	.dateTestAttribute = @"dateTestAttribute",
	.decimalTestAttribute = @"decimalTestAttribute",
	.doubleTestAttribute = @"doubleTestAttribute",
	.floatTestAttribute = @"floatTestAttribute",
	.int16TestAttribute = @"int16TestAttribute",
	.int32TestAttribute = @"int32TestAttribute",
	.int64TestAttribute = @"int64TestAttribute",
	.stringTestAttribute = @"stringTestAttribute",
};

const struct SingleEntityWithNoRelationshipsRelationships SingleEntityWithNoRelationshipsRelationships = {
};

const struct SingleEntityWithNoRelationshipsFetchedProperties SingleEntityWithNoRelationshipsFetchedProperties = {
};

@implementation SingleEntityWithNoRelationshipsID
@end

@implementation _SingleEntityWithNoRelationships

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SingleEntityWithNoRelationships" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SingleEntityWithNoRelationships";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SingleEntityWithNoRelationships" inManagedObjectContext:moc_];
}

- (SingleEntityWithNoRelationshipsID*)objectID {
	return (SingleEntityWithNoRelationshipsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"booleanTestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"booleanTestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"doubleTestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"doubleTestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"floatTestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"floatTestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int16TestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int16TestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int32TestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int32TestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"int64TestAttributeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"int64TestAttribute"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic booleanTestAttribute;



- (BOOL)booleanTestAttributeValue {
	NSNumber *result = [self booleanTestAttribute];
	return [result boolValue];
}

- (void)setBooleanTestAttributeValue:(BOOL)value_ {
	[self setBooleanTestAttribute:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveBooleanTestAttributeValue {
	NSNumber *result = [self primitiveBooleanTestAttribute];
	return [result boolValue];
}

- (void)setPrimitiveBooleanTestAttributeValue:(BOOL)value_ {
	[self setPrimitiveBooleanTestAttribute:[NSNumber numberWithBool:value_]];
}





@dynamic colorTestAttribute;






@dynamic dateTestAttribute;






@dynamic decimalTestAttribute;






@dynamic doubleTestAttribute;



- (double)doubleTestAttributeValue {
	NSNumber *result = [self doubleTestAttribute];
	return [result doubleValue];
}

- (void)setDoubleTestAttributeValue:(double)value_ {
	[self setDoubleTestAttribute:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveDoubleTestAttributeValue {
	NSNumber *result = [self primitiveDoubleTestAttribute];
	return [result doubleValue];
}

- (void)setPrimitiveDoubleTestAttributeValue:(double)value_ {
	[self setPrimitiveDoubleTestAttribute:[NSNumber numberWithDouble:value_]];
}





@dynamic floatTestAttribute;



- (float)floatTestAttributeValue {
	NSNumber *result = [self floatTestAttribute];
	return [result floatValue];
}

- (void)setFloatTestAttributeValue:(float)value_ {
	[self setFloatTestAttribute:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveFloatTestAttributeValue {
	NSNumber *result = [self primitiveFloatTestAttribute];
	return [result floatValue];
}

- (void)setPrimitiveFloatTestAttributeValue:(float)value_ {
	[self setPrimitiveFloatTestAttribute:[NSNumber numberWithFloat:value_]];
}





@dynamic int16TestAttribute;



- (int16_t)int16TestAttributeValue {
	NSNumber *result = [self int16TestAttribute];
	return [result shortValue];
}

- (void)setInt16TestAttributeValue:(int16_t)value_ {
	[self setInt16TestAttribute:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveInt16TestAttributeValue {
	NSNumber *result = [self primitiveInt16TestAttribute];
	return [result shortValue];
}

- (void)setPrimitiveInt16TestAttributeValue:(int16_t)value_ {
	[self setPrimitiveInt16TestAttribute:[NSNumber numberWithShort:value_]];
}





@dynamic int32TestAttribute;



- (int32_t)int32TestAttributeValue {
	NSNumber *result = [self int32TestAttribute];
	return [result intValue];
}

- (void)setInt32TestAttributeValue:(int32_t)value_ {
	[self setInt32TestAttribute:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveInt32TestAttributeValue {
	NSNumber *result = [self primitiveInt32TestAttribute];
	return [result intValue];
}

- (void)setPrimitiveInt32TestAttributeValue:(int32_t)value_ {
	[self setPrimitiveInt32TestAttribute:[NSNumber numberWithInt:value_]];
}





@dynamic int64TestAttribute;



- (int64_t)int64TestAttributeValue {
	NSNumber *result = [self int64TestAttribute];
	return [result longLongValue];
}

- (void)setInt64TestAttributeValue:(int64_t)value_ {
	[self setInt64TestAttribute:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveInt64TestAttributeValue {
	NSNumber *result = [self primitiveInt64TestAttribute];
	return [result longLongValue];
}

- (void)setPrimitiveInt64TestAttributeValue:(int64_t)value_ {
	[self setPrimitiveInt64TestAttribute:[NSNumber numberWithLongLong:value_]];
}





@dynamic stringTestAttribute;











@end
