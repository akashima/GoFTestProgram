//
//  SaltWaterBuilder.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Builder.h"
#import "SaltWater.h"

@interface SaltWaterBuilder : Builder
{
	@private
	SaltWater *_saltWater;
}

- (void)buildSaltWater;

@end
