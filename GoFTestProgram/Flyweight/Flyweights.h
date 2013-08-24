//
//  Flyweights.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/18.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ColorPallet.h"

enum COLOR_PATTERN_NO
{
	PATTERN_WHITE,
	PATTERN_GREEN,
	PATTERN_BLUE,
	PATTERN_YELLOW,
	};



@interface Flyweights : NSObject
{
	@private
	NSMutableDictionary *_poolDictionary;
}

- (ColorPallet *)colorPalletWithType:(int)colorPattern;

@end
