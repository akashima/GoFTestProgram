//
//  AddSaltCommand.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "AddSaltCommand.h"

@implementation AddSaltCommand

- (void)execute
{
	while (![_beaker isMelted])
	{
		[_beaker addSalt:1];
		[_beaker mixed];
	}
	NSLog(@"塩を1gずつ加える...");
	[_beaker note];
}


@end
