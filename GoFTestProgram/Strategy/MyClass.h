//
//  MyClass.h
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparetor.h"

@interface MyClass : NSObject
{
	@private
	Comparetor *_comparetor;
}

- (void)setComparetor:(Comparetor *)comprator;
- (int)compareWithHumanOne:(Human*)h1 withHumanTwo:(Human *)h2;

@end
