//
//  Life.m
//  GoFTestProgram
//
//  Created by akashima on 2013/07/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Life.h"

@implementation Life

- (void)goThroughTheDay
{
	[self goToWork];
	[self eatLunch];
	[self comeBackHome];
	[self programABitMore];
}

- (void)goToWork
{
	// 継承を勧め、未継承を禁止する(_cmdは自身のセレクタ)
	NSLog(@"goToWork");	// 呼ばれない
	[self doesNotRecognizeSelector:_cmd];
	NSLog(@"goToWork");	// 呼ばれない
}

- (void)eatLunch
{
	[self doesNotRecognizeSelector:_cmd];
}

- (void)comeBackHome
{
	[self doesNotRecognizeSelector:_cmd];
}

- (void)programABitMore
{
	[self doesNotRecognizeSelector:_cmd];
}

@end
