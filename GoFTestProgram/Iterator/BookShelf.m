//
//  BookShelf.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "BookShelf.h"
#import "BookShelfEnumerator.h"

@implementation BookShelf

- (id)init
{
	self = [super init];
	if (self)
	{
		_books = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void)dealloc
{
	[_books removeAllObjects];
	_books = nil;
	NSLog(@"破棄ずみ");
	[super dealloc];
}

- (Book*)getBookAtIndex:(int)index
{
	return [_books objectAtIndex:index];
}

- (void)appendBook:(Book*)book
{
	[_books addObject:book];
}

- (int)getLength
{
	return [_books count];
}

- (void)foreach:(void (^)(Book *))block
{
	for (Book *book in _books)
	{
		block(book);
	}
}

- (NSEnumerator *)bookEnumerator
{
	return [[[BookShelfEnumerator alloc] initWithBookShelf:self] autorelease];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
								  objects:(id [])buffer count:(NSUInteger)len
{
	int count = 0;
	while (state->state < [self getLength] && count < len)
	{
		buffer[count++] = [self getBookAtIndex:state->state++];
	}
	state->itemsPtr = buffer;
	state->mutationsPtr = (unsigned long *)self;
	return  count;
}

@end
