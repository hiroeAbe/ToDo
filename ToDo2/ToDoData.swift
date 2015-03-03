//
//  ToDoDate.swift
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/23.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//


import UIKit
import CoreData


class ToDoData: NSManagedObject {
    
    @NSManaged var todo:String
    @NSManaged var color:Int32
}