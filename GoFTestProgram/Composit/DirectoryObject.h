//
//  DirectoryObject.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/15.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "EntoryObject.h"

@interface DirectoryObject : EntoryObject
{
	@private
	NSMutableArray *_list;
	NSMutableString *_name;
}

- (void)setName:(NSString *)name;
- (void)addList:(EntoryObject *)object;

@end
