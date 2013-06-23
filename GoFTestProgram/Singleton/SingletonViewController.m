//
//  SingletonViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "SingletonViewController.h"
#import "SingletonObject.h"

@interface SingletonViewController ()

@end

@implementation SingletonViewController

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
	SingletonObject *sharedObject = [SingletonObject sharedManager];
	[sharedObject setTitle:@"SingletonPattern"];

	NSLog(@"%@", sharedObject);
	NSLog(@"%@", [sharedObject getTitle]);
	
	NSLog(@"%@", [SingletonObject sharedManager]);
	NSLog(@"%@", [[SingletonObject sharedManager] getTitle]);

	[sharedObject release];
	// Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
