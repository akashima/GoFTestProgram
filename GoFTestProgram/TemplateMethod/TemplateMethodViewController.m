//
//  TemplateMethodViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/07/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "TemplateMethodViewController.h"
#import "GoodLife.h"

@interface TemplateMethodViewController ()

@end

@implementation TemplateMethodViewController

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

	GoodLife *life = [[GoodLife alloc] init];
	[life goThroughTheDay];

	[life release];
	life = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
