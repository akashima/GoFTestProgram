//
//  MediatorViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/24.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "MediatorViewController.h"
#import "Mediator.h"
#import "APatternCollegue.h"

@interface MediatorViewController ()

@end

@implementation MediatorViewController

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

	Mediator *mediator = [[Mediator alloc] init];
	APatternCollegue *aCollegue = [[APatternCollegue alloc] init];
	APatternCollegue *bCollegue = [[APatternCollegue alloc] initWithValue:@"NewCollegue"];

	[aCollegue setMediator:mediator];
	[bCollegue setMediator:mediator];

	[aCollegue setCollegue:bCollegue];
	[bCollegue setCollegue:aCollegue];

	[mediator addCollegue:aCollegue];
	[mediator addCollegue:bCollegue];

	[aCollegue someThingsMethod];
	[bCollegue someThingsMethod];

	[mediator release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
