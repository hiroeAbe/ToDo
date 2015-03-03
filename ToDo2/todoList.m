//
//  ListFileViewController.m
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/18.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

#import "todoList.h"
@interface todoList()
@property (nonatomic,strong) NSMutableArray *context;
@property (nonatomic,strong) NSString *plistFile;
@end

@implementation todoList
-(id)init
{
    self = [super init];
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *docDirs = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    self.plistFile = [docDirs[0] URLByAppendingPathComponent:@"date.plist"];
    NSError *error;
    if(![self.plistFile chechResourceIsReachableAndReturnError: &error]){
        NSURL *plistFile = [[NSBundle mainBundle] URLForResource:@"todo" withExtension:@"plist"];
        if(![fm copyItemAtURL:plistFile toURL:self.plistFile error:&error]){
            NSLog(@"Copy Error");
        }
    }
    NSArray *fileContent = [[NSArray alloc] initWithContentsOfURL:self.plistFile];
    self.context = [[NSMutableArray alloc] initWithArray:fileContent];
    
    return  self;
}

-(NSArray *)fieldNames
{
    return @[@"todo",@"day"];
}
-(BOOL)save
{
    return [self.context writeToURL:self.plistFile atomically:YES];
    
}
-(NSArray *)todo
{
    return  self.context;
}
-(void)setRecord:(NSDictionary *)record atIndex:(NSInteger)index
{
    self.context[index]=record;
}
-(void)insert
{
    [self.context insertObject:@{@"todo":@"",@"day":@""} atIndex:0];
    if(! [self save]){
        NSLog(@"Error");
    }
}
-(void)delete:(NSInteger)index
{
    [self.context removeObjectAtIndex:index];
}
-(void)moveTo:(NSInteger)to from:(NSInteger)from
{
    id fromObject = [self.context objectAtIndex:from];
    [self.context removeObjectAtIndex:from];
    [self.context insertObject:fromObject atIndex: to];
}


@end
