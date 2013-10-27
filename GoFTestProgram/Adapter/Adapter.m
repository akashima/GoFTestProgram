//
//  Adapter.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Adapter.h"

@implementation AdapterDelgatePattern

- (id)init
{
	self = [super init];
	if (self)
	{
		_adaptee = [[Adaptee alloc] init];
	}
	return self;
}

- (void)request
{
	[_adaptee specificRequest];
}

- (void)dealloc
{
	[_adaptee release];
	[super dealloc];
}

@end

@implementation AdapterExtendPettern

- (void)request
{
	[super specificRequest];
}

@end