//
//  RookieTeacher.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "RookieTeacher.h"

@implementation RookieTeacher

- (void)setStudentList:(NSArray *)studentList
{
	[_students removeAllObjects];
	_students = nil;
	_students = [NSMutableArray arrayWithArray:studentList];
}

- (void)visitWithHome:(Home *)studentHome
{
	NSLog(@"Hello!!");
}

@end
