//
//  ListFileViewController.h
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/18.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface todoList : NSObject

@property (nonatomic,strong,readonly) NSArray *todo;
@property (nonatomic,strong,readonly) NSArray *fieldNames;

-(BOOL)save;
-(void)insert;
-(void)setRecord: (NSDictionary *)record atIndex: (NSInteger)index;
-(void)delete: (NSInteger)index;
-(void)moveTo: (NSInteger)index from:(NSInteger)index;

@end