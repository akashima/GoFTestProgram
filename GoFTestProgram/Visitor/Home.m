//
//  Home.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Home.h"

@implementation Home

- (NSObject *)praisedChild
{
	[self doesNotRecognizeSelector:_cmd];
	return nil;
}

- (NSObject *)reprovedChild
{
	[self doesNotRecognizeSelector:_cmd];
	return nil;
}

@end
