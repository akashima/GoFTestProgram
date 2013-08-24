//
//  Mediator.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Mediator.h"
#import "Collegue.h"

@implementation Mediator

- (id)init
{
	self = [super init];
	if (self)
	{
		_collegues = [NSMutableDictionary dictionary];
	}
	return self;
}

- (void)dealloc
{
	[super dealloc];
	[_collegues removeAllObjects];
	_collegues = nil;
}

// collegueの設定
- (void)addCollegue:(NSObject *)collegue
{
	if ([collegue isKindOfClass:[collegue class]])
	{
		[_collegues setObject:collegue forKey:[(Collegue *)collegue name]];
	}
}

// 調整者による調整結果
- (NSString *)resultMediation:(NSObject *)oldColuegue newCollegue:(NSObject *)newCollegue
{
	NSMutableString *resultString = [NSMutableString string];
	if ([[(Collegue *)oldColuegue name] isEqualToString:[(Collegue *)newCollegue name]])
	{
		[resultString appendFormat:@"object is equal to default value"];
	}else
	{
		[resultString appendFormat:@"object is not equal. new value is %@", [(Collegue *)newCollegue name]];
	}
	return resultString;
}



@end
