//
//  IteratorViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "IteratorViewController.h"
#import "BookShelf.h"
#import "Book.h"

@interface IteratorViewController ()

@end

@implementation IteratorViewController

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
	BookShelf *shelf = [[BookShelf alloc] init];
	[shelf appendBook:[Book bookWithName:@"Objective-C第一巻"]];
	[shelf appendBook:[Book bookWithName:@"Objective-C第2巻"]];
	[shelf appendBook:[Book bookWithName:@"Objective-C第3章"]];
	[shelf appendBook:[Book bookWithName:@"Objective-C vol.4"]];
	// Do any additional setup after loading the view.

	{
		int count = 0;
		NSEnumerator *enumrator = [shelf bookEnumerator];
		Book *book;
		while ((book = [enumrator nextObject]))
		{
			NSLog(@"%@", [book getBookName]);
			++count;
		}
		NSLog(@"Total %d books.", count);
	}

	{
		int count = 0;
		for (Book *book in shelf)
		{
			NSLog(@"%@", [book getBookName]);
			++count;
		}
		NSLog(@"total %d books.", count);
	}

	{
		__block int count = 0;
		[shelf foreach:^(Book *book){
			NSLog(@"%@", [book getBookName]);
			++count;
		}];
		NSLog(@"Total %d books.", count);
	}

	[shelf release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
