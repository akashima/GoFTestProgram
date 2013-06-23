//
//  ObserverViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "ObserverViewController.h"

@interface ObserverViewController ()

@end

@implementation ObserverViewController

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
	_dictionary = [NSMutableDictionary dictionary];

	// 監視指定
	NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionOld;
	[_dictionary addObserver:self forKeyPath:@"book" options:options context:nil];

	[_dictionary setValue:@"Observer" forKey:@"book"];
	[_dictionary removeObserver:self forKeyPath:@"book"];
	[_dictionary removeAllObjects];
	
	// Do any additional setup after loading the view from its nib.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	NSLog(@"------------------");
	NSLog(@"%@", keyPath);
	NSLog(@"%@", object);
	NSLog(@"%@", change);
	NSLog(@"%@", context);
	NSLog(@"------------------");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
