//
//  CommandViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/25.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "CommandViewController.h"
#import "AddSaltCommand.h"
#import "AddWaterrCommand.h"
#import "MakeSaltWaterCommand.h"
#import "Beaker.h"

@interface CommandViewController ()

@end

@implementation CommandViewController

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
	Command *addSalt = [[AddSaltCommand alloc] init];
	Command *addWater = [[AddWaterrCommand alloc] init];
	Command *makeSaltWater = [[MakeSaltWaterCommand alloc] init];

	[addSalt setBeaker:[[Beaker alloc] initWithWater:100 salt:0]];
	[addWater setBeaker:[[Beaker alloc] initWithWater:0 salt:10]];
	[makeSaltWater setBeaker:[[Beaker alloc] initWithWater:90 salt:10]];

	[addSalt execute];
	[addWater execute];
	[makeSaltWater execute];

	[addSalt release];
	[addWater release];
	[makeSaltWater release];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
