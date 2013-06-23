//
//  BookShelf.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookShelf : NSObject <NSFastEnumeration>
{
	@private
	NSMutableArray* _books;
	int last;
}

- (Book*)getBookAtIndex:(int)index;
- (void)appendBook:(Book*)book;
- (int)getLength;
- (void)foreach:(void (^)(Book *))block;
- (NSEnumerator *)bookEnumerator;

@end
