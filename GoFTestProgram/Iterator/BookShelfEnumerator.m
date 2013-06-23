//
//  BookShelfEnumerator.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "BookShelfEnumerator.h"

@implementation BookShelfEnumerator

- (id)initWithBookShelf:(BookShelf *)shelf
{
	self = [super init];
	if (self)
	{
		_shelf = shelf;
	}
	return self;
}

- (void)dealloc
{
	NSLog(@"破棄ずみ");
	[super dealloc];
}

- (id)nextObject
{
	id obj = ( _index >= [_shelf getLength] ) ? nil : [_shelf getBookAtIndex:_index];
	_index ++;
	return obj;
}

@end
