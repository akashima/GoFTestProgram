//
//  ProxyViewController.m
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/19.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "ProxyViewController.h"
#import "DynamicProxy.h"
#import "DoSomeThing.h"

@interface ProxyViewController ()

@end

@implementation ProxyViewController

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

	DoSomeThing *someThing = [[DoSomeThing alloc] init];
	id proxy = [DynamicProxy alloc];
	[proxy setTargetObject:someThing];
//	[proxy setTargetObject:questionThing];
	DoSomeThing *proxySomeThing = (DoSomeThing*)proxy;
//	NSObject *proxySomeThing = (DoSomeThing*)proxy;
//	UIView *proxySomeThing = (DoSomeThing*)proxy;
	
	[someThing footPrint];
	if ([proxySomeThing isProxy])
	{
		[proxySomeThing footPrint];
	}
//	[self.view addSubview:proxySomeThing];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
