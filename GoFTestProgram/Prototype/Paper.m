//
//  Paper.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Paper.h"

@implementation Paper

- (id)init
{
	self = [super init];
	if (self)
	{
		_name = [NSMutableString string];
	}
	return self;
}

- (void)setName:(NSString *)name
{
	[_name setString:name];
}

- (NSString *)name
{
	return _name;
}

- (Cloneable *)createClone
{
	Paper *newPaper = [[[Paper alloc] init] autorelease];
	[newPaper setName:[self name]];
	
	return newPaper;
}

- (void)dealloc
{
    _name = nil;
	[super dealloc];
}

@end
