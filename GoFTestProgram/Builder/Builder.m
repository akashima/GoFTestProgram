//
//  Builder.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Builder.h"

@implementation Builder

- (void)addSolute:(double)soluteAmount
{
	[self doesNotRecognizeSelector:_cmd];
}

- (void)addSolvent:(double)solventAmount
{
	[self doesNotRecognizeSelector:_cmd];
}

- (void)abandonSolusion:(double)solutionAmount
{
	[self doesNotRecognizeSelector:_cmd];
}

- (NSObject *)getResult
{
	[self doesNotRecognizeSelector:_cmd];
	return nil;
}

@end
