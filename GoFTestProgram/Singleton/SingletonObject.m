//
//  SingletonObject.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject

static SingletonObject *sharedSingletonObject = nil;

- (id)init
{
	self = [SingletonObject sharedManager];
	if (self)
	{
		_title = [NSMutableString string];
	}
	return self;
}

+ (SingletonObject*)sharedManager
{
	@synchronized(self)
	{
		if (sharedSingletonObject == nil)
		{
			sharedSingletonObject = [[self alloc] init];
		}
	}
	return sharedSingletonObject;
}

+ (id)allocWithZone:(NSZone *)zone
{
	@synchronized(self)
	{
		if (sharedSingletonObject == nil)
		{
			sharedSingletonObject = [super allocWithZone:zone];
			return sharedSingletonObject;
		}
	}
	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}

- (id)retain
{
	return self;
}

- (unsigned int)retainCount
{
	return UINT_MAX;
}


- (void)setTitle:(NSString *)title
{
	[_title setString:@""];
	[_title appendFormat:@"%@", title];
}

- (NSString *)getTitle
{
	return _title;
}

@end
