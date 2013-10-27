//
//  FileObject.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "FileObject.h"

@implementation FileObject

- (id)init
{
	self = [super init];
	if (self)
	{
		_name = [NSMutableString string];
	}
	return self;
}

- (void)setName:(NSString *)name
{
	[_name setString:name];
}

- (void)remove
{
	NSLog(@"%@を削除しました.", _name);
	[_name setString:@""];
}

- (void)dealloc
{
	[super dealloc];
}

@end
