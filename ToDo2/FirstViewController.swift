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
        tblTasks.reloadData()
 
    }
    @IBAction func display() {
    let defaults = NSUserDefaults.standardUserDefaults()
        let todo: AnyObject! = defaults.objectForKey("todo")
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "test")
        println(todo)
        cell.textLabel?.text = "\(todo)"
 
        tblTasks.reloadData()
        
    }
    //UITableViewDelete
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.removeObjectForKey("todo")
        }

    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "test")
        let defaults = NSUserDefaults.standardUserDefaults()
        let todos:AnyObject! = defaults.objectForKey("todo")
        
       /* for var i = 0;i<todos.count;i++ {
            todos[i]
        }*/
         //cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
         cell.textLabel?.text = "\(todos[indexPath.row])"
 
        
        switch (taskMgr.tasks[indexPath.row].color){
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
    
    
    
  



