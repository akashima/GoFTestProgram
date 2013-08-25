//
//  Beaker.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Beaker.h"

@implementation Beaker

- (id)init
{
	self = [super init];
	if (self)
	{
		_water = 0;
		_salt = 0;
		_melted = FALSE;
		[self mixed];
	}
	return self;
}

- (id)initWithWater:(double)water salt:(double)salt
{
	self = [self init];
	if (self)
	{
		_water = water;
		_salt = salt;
		_melted = FALSE;
		[self mixed];
	}
	return self;
}

- (void)addSalt:(double)salt
{
	_salt += salt;
}

- (void)addWater:(double)water
{
	_water += water;
}

- (void)mixed
{
	if( (_salt / (_salt + _water)) * 100 < 26.4 )
	{
		_melted = TRUE;
	} else
	{
		_melted = FALSE;
	}
}

- (double)salt
{
	return _salt;
}

- (double)water
{
	return _water;
}

- (BOOL)isMelted
{
	return _melted;
}

- (void)note
{
	NSLog(@"%@", [NSString stringWithFormat:@"水:%lg", _water]);
	NSLog(@"%@", [NSString stringWithFormat:@"塩:%lg", _salt]);
	NSLog(@"%@", [NSString stringWithFormat:@"濃度:%f%%", (_salt / (_water + _salt)) * 100]);
	
}


@end
