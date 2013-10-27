//
//  AppDelegate.m
//  GoFTestProgram
//
//  Created by akashima on 2013/06/09.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "AppDelegate.h"
#import "IteratorViewController.h"
#import "ObserverViewController.h"
#import "ProxyViewController.h"
#import "SingletonViewController.h"
#import "FactoryViewController.h"
#import "TemplateMethodViewController.h"
#import "FlyweightViewController.h"
#import "MediatorViewController.h"
#import "CommandViewController.h"
#import "FacadeViewController.h"
#import "StateViewController.h"
#import "CompositViewController.h"
#import "AdapterViewController.h"
#import "PrototypeViewController.h"
#import "BridgeViewController.h"
#import "BuilderViewController.h"
#import "StrategyViewController.h"
#import "DecoratorViewController.h"
#import "VisitorViewController.h"



@implementation AppDelegate

- (void)dealloc
{
	[_window release];
	[super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	// Override point for customization after application launch.
	_window.backgroundColor = [UIColor whiteColor];

//	IteratorViewController *viewController = [[IteratorViewController alloc] init];
//	ObserverViewController *viewController = [[ObserverViewController alloc] init];
//	ProxyViewController *viewController = [ProxyViewController alloc] init];
//	SingletonViewController *viewController = [[SingletonViewController alloc] init];
//	FactoryViewController *viewController = [[FactoryViewController alloc] init];
//	TemplateMethodViewController *viewController = [[TemplateMethodViewController alloc] init];
//	FlyweightViewController *viewController = [[FlyweightViewController alloc] init];
//	MediatorViewController *viewController = [[MediatorViewController alloc] init];
//	CommandViewController *viewController = [[CommandViewController alloc] init];
//	FacadeViewController *viewController = [[FacadeViewController alloc] init];
//	StateViewController *viewController = [[StateViewController alloc] init];
//	CompositViewController *viewController = [[CompositViewController alloc] init];
//	AdapterViewController *viewController = [[AdapterViewController alloc] init];
//	PrototypeViewController *viewController = [[PrototypeViewController alloc] init];
//	BridgeViewController *viewController = [[BridgeViewController alloc] init];
//	BuilderViewController *viewController = [[BuilderViewController alloc] init];
//	StrategyViewController *viewController = [[StrategyViewController alloc] init];
//	DecoratorViewController *viewController = [[DecoratorViewController alloc] init];
	VisitorViewController *viewController = [[VisitorViewController alloc] init];

	[_window setRootViewController:viewController];
	[viewController.view setFrame:CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height)];
	[viewController.view setBackgroundColor:[UIColor redColor]];

	[viewController release];
	viewController = nil;
	[_window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
