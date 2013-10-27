//
//  Cloneable.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Cloneable.h"

@implementation Cloneable

- (Cloneable *)createClone
{
	[self doesNotRecognizeSelector:_cmd];
	return nil;
}

@end
