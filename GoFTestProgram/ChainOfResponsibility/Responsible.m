//
//  Responsible.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Responsible.h"

@implementation Responsible

- (void)setResponsibleWithResponsePerson:(NSString *)responsiblePersone
{
	_responsiblePerson = responsiblePersone;
}

- (Responsible *)setNextWithResponsible:(Responsible *)next
{
	_next = next;
	return next;
}

- (void)putQuestionWithQestion:(Question *)question
{
	if([self beAbleToJudgeWithQuestion:question])
	{
		[self judgeWithQuestion:question];
	}else if (_next != nil)
	{
		[_next putQuestionWithQestion:question];
	}else
	{
		NSLog(@"no judge");
	}
}

- (BOOL)beAbleToJudgeWithQuestion:(id)question
{
	[self doesNotRecognizeSelector:_cmd];
	return FALSE;
}

- (void)judgeWithQuestion:(id)question
{
	[self doesNotRecognizeSelector:_cmd];
}

@end
