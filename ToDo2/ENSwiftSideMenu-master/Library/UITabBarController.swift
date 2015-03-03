//
//  UITabBarController.swift
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/22.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//


import UIKit

class UITabBarController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet var tblTasks: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        //var Tasks = userDefaults.integerForKey("ToDo")
        //  tblTasks = String(ToDo)
        
        // 加算した値を保存
        //userDefaults.setInteger(startCount, forKey: "startCount")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    
    //UITableViewDelete
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
        }
    }
    
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    
    
}
