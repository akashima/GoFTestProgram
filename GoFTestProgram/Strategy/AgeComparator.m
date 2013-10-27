//
//  AgeComparator.m
//  GoFTestProgram
//
//  Created by akashima on 2013/10/01.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "AgeComparator.h"

@implementation AgeComparator

- (int)compareWithHumanOne:(Human *)h1 withHumanTwo:(Human *)h2;
{
	int retVal = 0;
	if ([h1 age] > [h2 age])
	{
		retVal = 1;
	} else if ([h1 age] < [h2 age])
	{
		retVal = -1;
	} else
	{
		retVal = 0;
	}
	return retVal;
}
@end
