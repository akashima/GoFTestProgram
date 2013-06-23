//
//  SingletonObject.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject
{
	@private
	NSMutableString* _title;
}

+ (SingletonObject *)sharedManager;
+ (id)allocWithZone:(NSZone *)zone;

- (void)setTitle:(NSString *)title;
- (NSString *)getTitle;

@end
