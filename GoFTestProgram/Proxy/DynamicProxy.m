//
//  DynamicProxy.m
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/19.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "DynamicProxy.h"

@implementation DynamicProxy

@synthesize targetObject = _targetObject;

- (NSString *)description
{
	return [_targetObject description];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
	if (_targetObject)
	{
		{
			NSLog(@"ABCDEF");
		}
		[invocation setTarget:_targetObject];
		[invocation invoke];
		{
			NSLog(@"123456");
		}
	}
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
	NSMethodSignature *result;
	
	if (_targetObject)
	{
		result = [_targetObject methodSignatureForSelector:sel];
	} else
	{
		result = [super methodSignatureForSelector:sel];
	}

	return result;
}

@end
