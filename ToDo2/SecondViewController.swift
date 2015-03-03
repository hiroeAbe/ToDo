//
//  SecondViewController.swift
//  My Task List
//
//  Created by kiiita on 2014/08/09.
//  Copyright (c) 2014年 Yuto Kitakuni. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    
    var ColorNb = 0
    var todos :[String] = []
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func redBt(sender: UIButton) {
        view.backgroundColor = UIColor.redColor()
        ColorNb = 1
    }
    @IBAction func yellowBt(sender: UIButton) {
        view.backgroundColor = UIColor.yellowColor()
        ColorNb = 2
    }
    @IBAction func greenBt(sender: UIButton) {
        view.backgroundColor = UIColor.greenColor()
        ColorNb = 3
    }
    @IBAction func purpleBt(sender: UIButton) {
        view.backgroundColor = UIColor.purpleColor()
        ColorNb = 4
    }
    @IBAction func orangeBt(sender: UIButton) {
        view.backgroundColor = UIColor.orangeColor()
        ColorNb = 5
    }
    @IBAction func magentaBt(sender: UIButton) {
        view.backgroundColor = UIColor.magentaColor()
        ColorNb = 6
    }
    @IBAction func brownBt(sender: UIButton) {
        view.backgroundColor = UIColor.brownColor()
        ColorNb = 7
    }
    @IBAction func grayBt(sender: UIButton) {
        view.backgroundColor = UIColor.grayColor()
        ColorNb = 8
    }
    @IBAction func darkGrayBt(sender: UIButton) {
        view.backgroundColor = UIColor.darkGrayColor()
        ColorNb = 9
    }
    @IBAction func cyanBt(sender: UIButton) {
        view.backgroundColor = UIColor.cyanColor()
        ColorNb = 10
    }
    @IBAction func blueBt(sender: UIButton) {
        view.backgroundColor = UIColor.blueColor()
        ColorNb = 11
    }
       //Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        println("the button was clicked")
        taskMgr.addTask(todos,color:ColorNb);
        self.view.endEditing(true)
        todos += [txtTask.text]
        //todos = txtTask.text
        defaults.setObject(todos, forKey: "todo")
        println(defaults.objectForKey("todo"))

        let success = defaults.synchronize()
        if success {
            println("データを同期しました")
        }
        txtTask.text = ""
        
        self.tabBarController?.selectedIndex = 0;
        
    }
    
    // IOS Touch Functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    //  UITextField Delegate　// called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(textField: UITextField!) -> Bool{

        textField.resignFirstResponder();
        return true
        
    }
    
    
}


    

