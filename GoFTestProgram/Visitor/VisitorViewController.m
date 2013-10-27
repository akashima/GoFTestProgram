//
//  VisitorViewController.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "VisitorViewController.h"
#import "TanakaHome.h"
#import "SuzukiHome.h"
#import "RookieTeacher.h"

@interface VisitorViewController ()

@end

@implementation VisitorViewController

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
	RookieTeacher *teacher = [[RookieTeacher alloc] init];
	TanakaHome *tanaka = [[TanakaHome alloc] init];
	SuzukiHome *suzuki = [[SuzukiHome alloc] init];
	[teacher setStudentList:[NSArray arrayWithObjects:tanaka, suzuki, nil]];

	for (Home *home in [teacher getStudentList])
	{
		[teacher visitWithHome:home];
		[home praisedChild];
		[home reprovedChild];
	}

	[tanaka release];
	[suzuki release];
	[teacher release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
