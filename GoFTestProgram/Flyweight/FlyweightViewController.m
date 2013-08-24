//
//  FlyweightViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/08/18.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "FlyweightViewController.h"
#import "Flyweights.h"

@interface FlyweightViewController ()

@end

@implementation FlyweightViewController

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
	Flyweights *colorPattern = [[Flyweights alloc] init];
	ColorPallet *pallet = [colorPattern colorPalletWithType:PATTERN_WHITE];
	NSLog(@"%f, %f, %f, %p, %@", [pallet red], [pallet green], [pallet blue], pallet, pallet);

	pallet = [colorPattern colorPalletWithType:PATTERN_BLUE];
	NSLog(@"%f, %f, %f, %p, %@", [pallet red], [pallet green], [pallet blue], pallet, pallet);

	pallet = [colorPattern colorPalletWithType:PATTERN_GREEN];
	NSLog(@"%f, %f, %f, %p, %@", [pallet red], [pallet green], [pallet blue], pallet, pallet);
	
	pallet = [colorPattern colorPalletWithType:PATTERN_WHITE];
	NSLog(@"%f, %f, %f, %p, %@", [pallet red], [pallet green], [pallet blue], pallet, pallet);
	
	[colorPattern release];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
