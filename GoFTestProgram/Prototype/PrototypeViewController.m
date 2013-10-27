//
//  PrototypeViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/23.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "PrototypeViewController.h"
#import "Paper.h"

@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

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

	Paper *protoType = [[Paper alloc] init];
	[protoType setName:@"prototype pattern"];

	NSMutableArray *clones = [NSMutableArray array];
	for (int i=0; i<100; i++)
	{
		[clones addObject:[protoType createClone]];
	}

	for (Paper *clone in clones)
	{
		NSLog(@"%@:%@", clone, [clone name]);
	}
	[clones removeAllObjects];
	[protoType release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
