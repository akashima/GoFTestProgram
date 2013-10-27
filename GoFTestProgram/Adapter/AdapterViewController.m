//
//  AdapterViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/16.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "AdapterViewController.h"
#import "Adapter.h"

@interface AdapterViewController ()

@end

@implementation AdapterViewController

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
	AdapterDelgatePattern *adapter1 = [[AdapterDelgatePattern alloc] init];
	[adapter1 request];
	[adapter1 release];
	
	AdapterExtendPettern *adapter2 = [[AdapterExtendPettern alloc] init];
	[adapter2 request];
	[adapter2 release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
