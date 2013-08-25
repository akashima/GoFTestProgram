//
//  Command.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Command.h"

@implementation Command

- (void)setBeaker:(Beaker *)beaker
{
	_beaker = beaker;
}

- (void)execute
{
	[self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc
{
	[_beaker release];
	_beaker = nil;
	[super dealloc];
}

@end
