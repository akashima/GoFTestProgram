//
//  APatternCollegue.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "APatternCollegue.h"

@implementation APatternCollegue

- (id)init
{
	self = [super init];
	if (self)
	{
		_name = [NSString stringWithFormat:@"default"];
	}
	return self;
}

- (id)initWithValue:(NSString *)name
{
	self = [super init];
	if (self)
	{
		_name = [NSString stringWithFormat:@"%@", name];
	}
	return self;
}

- (void)dealloc
{
	_mediator = nil;
	_name = nil;
	_thanYourself = nil;
	[super dealloc];
}

- (void)setMediator:(Mediator *)mediator
{
	_mediator = mediator;
}

- (NSString *)name
{
	return _name;
}

- (void)setCollegue:(Collegue *)thanYourself
{
	_thanYourself = thanYourself;
}

- (void)someThingsMethod
{
	NSLog(@"%@", [_mediator resultMediation:self newCollegue:_thanYourself]);
}

@end
