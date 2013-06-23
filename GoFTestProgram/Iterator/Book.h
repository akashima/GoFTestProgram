//
//  Book.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
	@private
	NSString *_name;
}

- (id)initWithName:(NSString *)bookName;
+ (id)bookWithName:(NSString *)bookName;
- (void)setBookName:(NSString*)bookName;
- (NSString *)getBookName;

@end
