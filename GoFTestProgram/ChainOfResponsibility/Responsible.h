//
//  Responsible.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface Responsible : NSObject
{
	@protected
	Responsible *_next;
	NSString *_responsiblePerson;
}

- (void)setResponsibleWithResponsePerson:(NSString *)responsiblePersone;
- (Responsible *)setNextWithResponsible:(Responsible *)next;
- (void)putQuestionWithQestion:(Question *)question;
- (BOOL)beAbleToJudgeWithQuestion:(Question *)question;
- (void)judgeWithQuestion:(Question *)question;


@end
