//
//  DynamicProxy.h
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/19.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DynamicProxy : NSProxy
{
	@private
	NSObject *_targetObject;
}

@property (strong, nonatomic) NSObject *targetObject;

@end
