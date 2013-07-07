//
//  FactoryViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "FactoryViewController.h"
#import "ConcreateCreater.h"
#import "Product.h"

@interface FactoryViewController ()

@end

@implementation FactoryViewController

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

	Creator* creator = [[ConcreateCreater alloc] init];

	Product* product = nil;
	product = [[[creator productClassWithClassName:@"ProductA"] alloc] init];
	NSLog(@"%@", [product class]);
	NSLog(@"%d", [product isKindOfClass:[product class]]);
	[product release];
	product = nil;

	product = [[[creator productClassWithClassName:@"ProductB"] alloc] init];
	NSLog(@"%@", [product class]);
	NSLog(@"%d", [product isKindOfClass:[product class]]);
	[product release];
	product = nil;

	
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
