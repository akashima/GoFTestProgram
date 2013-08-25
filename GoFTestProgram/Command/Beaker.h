//
//  Beaker.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beaker : NSObject
{
	@private
	double _water;
	double _salt;
	// 食塩が全て溶けたときTRUE, 溶け残るとFALSE
	BOOL _melted;
}

- (id)initWithWater:(double)water salt:(double)salt;
- (void)addSalt:(double)salt;
- (void)addWater:(double)water;
- (void)mixed;
- (double)salt;
- (double)water;
- (BOOL)isMelted;
- (void)note;

@end
