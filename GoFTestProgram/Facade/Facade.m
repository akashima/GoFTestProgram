//
//  Facade.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Facade.h"
#import "SubSystemA.h"
#import "SubSystemB.h"
#import "SubSystemC.h"

@implementation Facade

- (void)methodFirst
{
	NSLog(@"Method First Call Start.");
	SubSystemA *subsysA = [[SubSystemA alloc] init];
	SubSystemC *subsysC = [[SubSystemC alloc] init];
	SubSystemB *subsysB = [[SubSystemB alloc] init];

	[subsysA methodA];
	[subsysC methodC];
	[subsysB methodB];

	[subsysA release];
	[subsysC release];
	[subsysB release];
	NSLog(@"Method First Call End.");
}

- (void)methodSecond
{
	NSLog(@"Method Second Call Start.");
	SubSystemA *subsysA = [[SubSystemA alloc] init];
	SubSystemC *subsysC = [[SubSystemC alloc] init];

	[subsysA methodA];
	[subsysC methodC];

	[subsysA release];
	[subsysC release];
	NSLog(@"Method Second Call end.");
}

@end
