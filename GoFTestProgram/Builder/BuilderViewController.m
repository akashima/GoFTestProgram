//
//  BuilderViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "BuilderViewController.h"
#import "SaltWaterBuilder.h"
#import "Director.h"
#import "SaltWater.h"

@interface BuilderViewController ()

@end

@implementation BuilderViewController

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
	SaltWaterBuilder *builder = [[SaltWaterBuilder alloc] init];
	[builder buildSaltWater];
	Director *director = [[Director alloc] initWithBuilder:builder];
	SaltWater *saltWater = (SaltWater*)[builder getResult];
	[director building];
	NSLog(@"%f, %f", [saltWater water], [saltWater salt]);
	[director release];
	[builder release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
