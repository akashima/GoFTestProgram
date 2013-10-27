//
//  Question.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
{
	@private
	int _level;
	NSString *_question;
}

- (void)setLevel:(int)level;
- (void)setQuestion:(NSString *)question;
- (int)getLevel;
- (NSString *)getQuestion;

@end
