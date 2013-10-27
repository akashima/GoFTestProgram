//
//  SuzukiHome.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SuzukiHome.h"
#import "Teacher.h"

@implementation SuzukiHome

- (NSObject *)praisedChild
{
	NSLog(@"Wellcom my SuzukiHome!!");
	return nil;
}

- (NSObject *)reprovedChild
{
	NSLog(@"well... well...");
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
