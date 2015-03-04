//
//  FirstViewController.swift
//  My Task List
//
//  Created by kiiita on 2014/08/09.
//  Copyright (c) 2014年 Yuto Kitakuni. All rights reserved.
//

import UIKit
import CoreData

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var defaults = NSUserDefaults.standardUserDefaults()
    var todos = [AnyObject]()
    var number = [Int]()
   
    @IBOutlet var tblTasks: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        //tblTasks.reloadData();
        // Dispose of any resources that can be recreated.
        // テーブル情報を更新する
        todos = []
        print(defaults.objectForKey("todo"))
        if defaults.objectForKey("todo") != nil {
           todos = defaults.objectForKey("todo") as Array
            number = defaults.objectForKey("number") as Array
        }
        
  
        print("データ")
        tblTasks.reloadData()
 
    }
    @IBAction func display() {
       
        tblTasks.reloadData()
    }
    //UITableViewDelete
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            //taskMgr.tasks.removeAtIndex(indexPath.row)
            //let defaults = NSUserDefaults.standardUserDefaults()
            //let todo: AnyObject! = defaults.objectForKey("todo")
            defaults.removeObjectForKey("todo")
            todos.removeAtIndex(indexPath.row)
            defaults.setObject(todos, forKey: "todo")
            defaults.removeObjectForKey("number")
            number.removeAtIndex(indexPath.row)
            defaults.setObject(number, forKey: "number")

            let success = defaults.synchronize()
            tblTasks.reloadData();
        }

    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return taskMgr.tasks.count
        return todos.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "test")
        

         cell.textLabel!.text = "\(todos[indexPath.row])"
        
       switch (number[indexPath.row]){
        case 0:
             cell.textLabel?.textColor = UIColor.blackColor()
            break
        case 1:
            cell.textLabel?.textColor = UIColor.redColor()
            break
        case 2:
            cell.textLabel?.textColor = UIColor.yellowColor()
            break
        case 3:
            cell.textLabel?.textColor = UIColor.greenColor()
            break
        case 4:
            cell.textLabel?.textColor = UIColor.purpleColor()
            break
        case 5:
            cell.textLabel?.textColor = UIColor.orangeColor()
            break
        case 6:
            cell.textLabel?.textColor = UIColor.magentaColor()
            break
        case 7:
            cell.textLabel?.textColor = UIColor.brownColor()
            break
        case 8:
            cell.textLabel?.textColor = UIColor.grayColor()
            break
        case 9:
            cell.textLabel?.textColor = UIColor.darkGrayColor()
            break
        case 10:
            cell.textLabel?.textColor = UIColor.cyanColor()
            break
        case 11:
            cell.textLabel?.textColor = UIColor.blueColor()
            break
        default:
            cell.textLabel?.textColor = UIColor.blackColor()

        }
       
        
            return cell
    }

}
    
    
    
  



