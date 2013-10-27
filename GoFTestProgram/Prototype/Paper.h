//
//  Paper.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Cloneable.h"

@interface Paper : Cloneable
{
	@private
	NSMutableString *_name;
}


- (void)setName:(NSString*)name;
- (NSString *)name;

@end
