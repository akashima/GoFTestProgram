//
//  MyClass.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (void)setComparetor:(Comparetor *)comprator
{
	_comparetor = comprator;
}

- (int)compareWithHumanOne:(Human *)h1 withHumanTwo:(Human *)h2
{
	return [_comparetor compareWithHumanOne:h1 withHumanTwo:h2];
}

@end
