//
//  SaltWater.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SaltWater.h"

@implementation SaltWater

- (id)initWithWater:(double)water withSalt:(double)salt
{
	self = [super init];
	if (self)
	{
		_water = water;
		_salt = salt;
	}
	return self;
}

- (void)setSalt:(double)salt
{
	_salt = salt;
}

- (void)setWater:(double)water
{
	_water = water;
}

- (double)salt
{
	return _salt;
}

- (double)water
{
	return _water;
}

@end
