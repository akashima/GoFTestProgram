//
//  ClassTeacher.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "ClassTeacher.h"
#import "Question.h"

@implementation ClassTeacher

- (void)setLevel:(int)level
{
	_level = level;
}

- (BOOL)beAbleToJudgeWithQuestion:(Question *)question
{
	BOOL result = FALSE;
	if ([question getLevel] < _level)
	{
		result = TRUE;
	}
	return result;
}

- (void)judgeWithQuestion:(id)question
{
	// ここにはstrategyを作るのかな？
	NSLog(@"[Level:%d]%@:Anser:%@", _level, _responsiblePerson, [self class]);
}

@end
