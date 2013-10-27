//
//  StrategyViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "StrategyViewController.h"
#import "Human.h"
#import "MyClass.h"
#import "AgeComparator.h"
#import "HeightComparetor.h"

@interface StrategyViewController ()

@end

@implementation StrategyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	int result = 99;
	Human *h1 = [[Human alloc] init];
	Human *h2 = [[Human alloc] init];
	AgeComparator *ageComp = [[AgeComparator alloc] init];
	HeightComparetor *heightComp = [[HeightComparetor alloc] init];
	[h1 setHumanStateWithName:@"a" withHeight:186 withWeight:64 withAge:22];
	[h2 setHumanStateWithName:@"b" withHeight:172 withWeight:55 withAge:22];

	MyClass *myclass = [[MyClass alloc] init];
	[myclass setComparetor:ageComp];
	result = [myclass compareWithHumanOne:h1 withHumanTwo:h2];
	[myclass setComparetor:nil];
	NSLog(@"%d", result);
	[myclass setComparetor:heightComp];
	result = [myclass compareWithHumanOne:h1 withHumanTwo:h2];
	[myclass setComparetor:nil];
	NSLog(@"%d", result);

	[h1 release];
	[h2 release];
	[ageComp release];
	[heightComp release];
	[myclass release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
