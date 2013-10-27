//
//  Teacher.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TanakaHome.h"
#import "SuzukiHome.h"

@interface Teacher : NSObject
{
	@protected
	NSMutableArray *_students;
}

- (void)visitWithHome:(Home *)studentHome;
- (NSArray *)getStudentList;

@end
