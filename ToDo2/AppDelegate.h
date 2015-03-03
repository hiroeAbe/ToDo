//
//  AppDelegate.h
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/19.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

#import <UIKit/UIKit.h>

@class todoList;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong,nonatomic) UIWindow *window;
@property (strong,nonatomic) todoList *todolist;

@end