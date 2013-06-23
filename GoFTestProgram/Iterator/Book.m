//
//  Book.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Book.h"

@implementation Book

- (id)initWithName:(NSString *)bookName
{
	self = [super init];
	if (self)
	{
		_name = bookName;
	}
	return self;
}

+ (id)bookWithName:(NSString *)bookName
{
	return [[[self alloc] initWithName:bookName] autorelease];
}


- (void)dealloc
{
	_name = nil;
	NSLog(@"破棄ずみ");
	[super dealloc];
}

- (void)setBookName:(NSString *)bookName
{
	_name = bookName;
}

- (NSString *)getBookName
{
	return _name;
}

@end
