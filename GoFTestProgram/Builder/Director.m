//
//  Director.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Director.h"

@implementation Director

- (id)initWithBuilder:(Builder *)builder
{
	self = [super init];
	if (self)
	{
		_builder = builder;
	}
	return self;
}

- (void)building
{
	[_builder addSolvent:100];
	[_builder addSolute:40];
	[_builder abandonSolusion:70];
	[_builder addSolvent:100];
	[_builder addSolute:15];
}

@end
