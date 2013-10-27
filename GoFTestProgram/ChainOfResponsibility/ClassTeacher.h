//
//  ClassTeacher.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Responsible.h"

@interface ClassTeacher : Responsible
{
	@private
	int _level;
}

- (void)setLevel:(int)level;

@end
