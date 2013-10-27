//
//  BridgeViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "BridgeViewController.h"
#import "Glass.h"
#import "Wood.h"
#import "Bowl.h"
#import "Plate.h"

@interface BridgeViewController ()

@end

@implementation BridgeViewController

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
	Bowl *bowl = [[Bowl alloc] init];
	Glass *glass = [[Glass alloc] init];
	[bowl setMaterial:glass];

	NSLog(@"%@", [bowl getMaterialName]);

	Plate *plate = [[Plate alloc] init];
	Wood *wood = [[Wood alloc] init];
	[plate setMaterial:wood];

	NSLog(@"%@", [plate getMaterialName]);

	
	[glass release];
	[bowl release];
	[wood release];
	[plate release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
