//
//  AddWaterrCommand.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "AddWaterrCommand.h"

@implementation AddWaterrCommand

- (void)execute
{
	while (![_beaker isMelted])
	{
		[_beaker addWater:10];
		[_beaker mixed];
	}
	NSLog(@"水を10gずつ加える...");
	[_beaker note];
}

@end
