//
//  FacadeViewController.m
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/26.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "FacadeViewController.h"
#import "Facade.h"

@interface FacadeViewController ()

@end

@implementation FacadeViewController

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

	Facade *facade = [[Facade alloc] init];
	[facade methodFirst];
	[facade methodSecond];
	[facade release];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
