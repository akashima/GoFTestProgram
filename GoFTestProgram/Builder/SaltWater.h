//
//  SaltWater.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaltWater : NSObject
{
	@private
	double _salt;
	double _water;
}

- (id)initWithWater:(double)water withSalt:(double)salt;
- (void)setSalt:(double)salt;
- (void)setWater:(double)water;
- (double)salt;
- (double)water;

@end
