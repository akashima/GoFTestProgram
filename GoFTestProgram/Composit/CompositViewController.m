//
//  CompositViewController.m
//  GoFTestProgram
//
//  Created by akashima on 2013/09/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//
#import "DirectoryObject.h"
#import "FileObject.h"


#import "CompositViewController.h"

@interface CompositViewController ()

@end

@implementation CompositViewController

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
	
	DirectoryObject *rootObject = [[DirectoryObject alloc] init];
	FileObject *fileA = [[FileObject alloc] init];
	FileObject *fileB = [[FileObject alloc] init];
	DirectoryObject *directoryA = [[DirectoryObject alloc] init];
	DirectoryObject *directoryB = [[DirectoryObject alloc] init];

	[rootObject setName:@"root"];
	[fileA setName:@"FileTextA"];
	[fileB setName:@"FileTextB"];
	[directoryA setName:@"DirectoryA"];
	[directoryB setName:@"DirectoryB"];
	[rootObject addList:fileA];
	[directoryA addList:directoryB];
	[directoryB addList:fileB];
	[rootObject addList:directoryA];
	
	[rootObject remove];
	[fileA release];
	[fileB release];
	[directoryA release];
	[directoryB release];
	[rootObject release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
