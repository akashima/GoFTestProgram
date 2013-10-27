//
//  Question.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Question.h"

@implementation Question

- (void)setLevel:(int)level
{
	_level = level;
}

- (void)setQuestion:(NSString *)question
{
	_question = [NSString stringWithFormat:@"%@", question];
}

- (int)getLevel
{
	return _level;
}

- (NSString *)getQuestion
{
	return _question;
}

@end
