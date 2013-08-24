//
//  Flyweights.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/18.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Flyweights.h"

@implementation Flyweights

- (ColorPallet *)colorPalletWithType:(int)colorPattern
{
	if (_poolDictionary == nil)
	{
		_poolDictionary = [NSMutableDictionary dictionary];
	}
	
	ColorPallet *pallet = [_poolDictionary objectForKey:[NSNumber numberWithInt:colorPattern]];
	
	if (pallet == nil)
	{
		pallet = [[ColorPallet alloc] init];

		switch (colorPattern)
		{
			case PATTERN_BLUE:
				[pallet setRed:0.0f];
				[pallet setBlue:1.0f];
				[pallet setGreen:0.0f];
				break;
			case PATTERN_GREEN:
				[pallet setRed:0.0f];
				[pallet setBlue:0.0f];
				[pallet setGreen:1.0f];
				break;
			case PATTERN_YELLOW:
				[pallet setRed:0.0f];
				[pallet setGreen:1.0f];
				[pallet setBlue:1.0f];
				break;
			case PATTERN_WHITE:
			default:
				[pallet setRed:1.0f];
				[pallet setGreen:1.0f];
				[pallet setBlue:1.0f];
				break;
		}
		[_poolDictionary setObject:pallet forKey:[NSNumber numberWithInt:colorPattern]];
	}

	return pallet;
}

- (void)dealloc
{
	[_poolDictionary removeAllObjects];
	[super dealloc];
}


@end
