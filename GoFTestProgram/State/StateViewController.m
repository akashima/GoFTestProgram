//
//  StateViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "StateViewController.h"
#import "SwordMan.h"
#import "DefaultSkillState.h"
#import "HighclassSkillState.h"


@interface StateViewController ()

@end

@implementation StateViewController

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
	SwordMan *swordMan = [[SwordMan alloc] init];
	State *state = [[State alloc] init];
	
	[swordMan changeSkillState:state];
	NSLog(@"%@", [swordMan getAttackSkillName]);
	NSLog(@"%@", [swordMan getDefenceSkillName]);
	[state release];

	state = [[DefaultSkillState alloc] init];
	[swordMan changeSkillState:state];
	NSLog(@"%@", [swordMan getAttackSkillName]);
	NSLog(@"%@", [swordMan getDefenceSkillName]);
	[state release];

	state = [[HighclassSkillState alloc] init];
	[swordMan changeSkillState:state];
	NSLog(@"%@", [swordMan getAttackSkillName]);
	NSLog(@"%@", [swordMan getDefenceSkillName]);
	[state release];

	[swordMan release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
