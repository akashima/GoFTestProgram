//
//  FileObject.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "EntoryObject.h"

@interface FileObject : EntoryObject
{
	@private
	NSMutableString *_name;
}

- (void)setName:(NSString *)name;

@end
