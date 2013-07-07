//
//  ConcreateCreater.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "ConcreateCreater.h"

@implementation ConcreateCreater

- (Product *)createProductWithClassName:(NSString *)className
{
	if ([className isEqualToString:@"ProductA"])
	{
		return [[ProductA alloc] init];
	}
	if ([className isEqualToString:@"ProductB"])
	{
		return [[ProductB alloc] init];
	}
	return nil;
}

- (Class)productClassWithClassName:(NSString *)className
{
	if ([className isEqualToString:@"ProductA"])
	{
		return [ProductA class];
	}
	if ([className isEqualToString:@"ProductB"])
	{
		return [ProductB class];
	}
	return nil;
}

@end
