//
//  Teacher.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (void)visitWithHome:(Home *)studentHome
{
	[self doesNotRecognizeSelector:_cmd];
}

- (NSArray *)getStudentList
{
	return _students;
}

- (void)dealloc
{
	[super dealloc];
	[_students removeAllObjects];
}

@end
