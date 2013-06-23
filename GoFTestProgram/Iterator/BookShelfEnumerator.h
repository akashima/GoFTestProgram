//
//  BookShelfEnumerator.h
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookShelf.h"

@interface BookShelfEnumerator : NSEnumerator
{
	@private
	BookShelf* _shelf;
	int _index;
}

- (id)initWithBookShelf:(BookShelf *)shelf;
- (id)nextObject;

@end
