//
//  DecoratorViewController.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/27.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "DecoratorViewController.h"
#import "VanillaIcecream.h"
#import "CashewNutsVanillaIcecream.h"

@interface DecoratorViewController ()

@end

@implementation DecoratorViewController

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
	VanillaIcecream *ice = [[VanillaIcecream alloc] init];
	CashewNutsVanillaIcecream *cashewNuts = [[CashewNutsVanillaIcecream alloc] init];
	[cashewNuts setIceceam:ice];
	NSLog(@"%@", [cashewNuts getName]);
	[ice release];
	[cashewNuts setIceceam:nil];
	[cashewNuts release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
