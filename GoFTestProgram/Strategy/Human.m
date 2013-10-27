//
//  Human.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Human.h"

@implementation Human

- (id)init
{
	self = [super init];
	if (self)
	{
		_name = [NSMutableString string];
	}
	return self;
}

- (void)setHumanStateWithName:(NSString *)name withHeight:(int)height withWeight:(int)weight withAge:(int)age
{
	[_name setString:name];
	_height = height;
	_weight = weight;
	_age = age;
}

- (int)age
{
	return _age;
}

- (int)height
{
	return _height;
}

@end
