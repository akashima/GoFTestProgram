//
//  SaltWaterBuilder.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SaltWaterBuilder.h"

@implementation SaltWaterBuilder

- (void)buildSaltWater
{
	_saltWater = [[SaltWater alloc] initWithWater:0 withSalt:0];
}

- (void)addSolvent:(double)solventAmount
{
	[_saltWater setWater:[_saltWater water] + solventAmount];
}

- (void)addSolute:(double)soluteAmount
{
	[_saltWater setSalt:[_saltWater salt] + soluteAmount];
}

- (void)abandonSolusion:(double)solutionAmount
{
	double saltDelta = solutionAmount * ([_saltWater salt] / ([_saltWater salt] + [_saltWater water]));
	double waterDelta = solutionAmount * ([_saltWater water] / ([_saltWater salt] + [_saltWater water]));

	[_saltWater setSalt:[_saltWater salt] - saltDelta];
	[_saltWater setWater:[_saltWater water] - waterDelta];
}

- (NSObject *)getResult
{
	return _saltWater;
}

- (void)dealloc
{
	[_saltWater release];
	[super dealloc];
}

@end
