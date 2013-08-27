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
#if !__has_feature(objc_arc)
#else
static dispatch_queue_t serialQueue;
#define SingletonObjectQueueName "jp.bglb.vritra.GoFTestProgram.SerialQueue"
#endif

#if !__has_feature(objc_arc)
- (id)init
{
	self = [super init];
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
#else
- (id)init
{
	id __block obj;
	dispatch_sync(serialQueue,
	^{
		obj = [super init];
		if (obj)
		{
			
		}
	});
	self = obj;
	return self;
}

+ (id)allocWithZone:(NSZone *)zone
{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken,
	^{
		serialQueue = dispatch_queue_create(SingletonObjectQueueName, NULL);
		if (sharedSingletonObject == nil)
		{
			sharedSingletonObject = [super allocWithZone:zone];
		}
	});
	return sharedSingletonObject;
}

+ (SingletonObject *)sharedManager
{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken,
	^{
		sharedSingletonObject = [[SingletonObject alloc] init];
	});
	return sharedSingletonObject;
}

#endif

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
