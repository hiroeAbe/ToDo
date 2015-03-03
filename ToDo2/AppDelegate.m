//
//  AppDelegate.m
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/19.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

#import "AppDelegate.h"
#import "todoList.h"

@implementation AppDelegate

-(BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.todolist = [[todoList alloc]init];
    
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    splitViewController.delegate=self;
    
    return YES;
}
-(void)applicationWillResignActive:(UIApplication *)application{}
-(void)applicationDidEnterBackground:(UIApplication *)application{}
-(void)applicationWillEnterForeground:(UIApplication *)application{}
-(void)applicationDidBecomeActive:(UIApplication *)application{}
-(void)applicationWillTerminate:(UIApplication *)application{}

#pragma mark - Split view

-(BOOL) splitViewController: (UISplitViewController *)splitViewController
collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController{
    return YES;

}


@end