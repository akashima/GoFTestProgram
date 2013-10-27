//
//  TanakaHome.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "TanakaHome.h"
#import "Teacher.h"

@implementation TanakaHome

- (NSObject *)praisedChild
{
	NSLog(@"Wellcom my TanakaHome!!");
	return nil;
}

- (NSObject *)reprovedChild
{
	NSLog(@"Thank you my teacher!!");
	return nil;
}

- (void)acceptWithTeacher:(NSObject *)teacher
{
	if ([teacher isKindOfClass:[teacher class]])
	{
		[(Teacher *)teacher visitWithHome:self];
	}
}

@end
