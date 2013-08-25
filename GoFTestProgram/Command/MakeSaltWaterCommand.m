//
//  MakeSaltWaterCommand.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "MakeSaltWaterCommand.h"

@implementation MakeSaltWaterCommand

- (void)execute
{
	[_beaker mixed];
	NSLog(@"食塩水を作る...");
	[_beaker note];
}


@end
