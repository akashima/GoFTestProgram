//
//  HeightComparetor.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "HeightComparetor.h"

@implementation HeightComparetor

- (int)compareWithHumanOne:(Human *)h1 withHumanTwo:(Human *)h2
{
	int retVal = 0;
	if ([h1 height] > [h2 height])
	{
		retVal = 1;
	}else if ([h1 height] < [h2 height])
	{
		retVal = -1;
	}else
	{
		retVal = 0;
	}
	return retVal;
}

@end
