//
//  DirectoryObject.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/15.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "DirectoryObject.h"

@implementation DirectoryObject
- (id)init
{
	self = [super init];
	if (self)
	{
		_name = [NSMutableString string];
		_list = [NSMutableArray array];
	}
	return self;
}


- (void)setName:(NSString *)name
{
	[_name setString:name];
}

- (void)addList:(EntoryObject *)object
{
	[_list addObject:object];
}

- (void)remove
{
	for (EntoryObject *object in _list)
	{
		[object remove];
	}
	NSLog(@"%@を削除しました.", _name);
	[_name setString:@""];
}

- (void)dealloc
{
	[_list removeAllObjects];
	[super dealloc];
}


@end
