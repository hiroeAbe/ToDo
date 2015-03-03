//
//  ViewController3.swift
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/17.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, ENSideMenuDelegate{

    //@IBOutlet var View : UIView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Move next line to viewWillAppear functon if you store your view controllers
       //self.sideMenuController()?.sideMenu?.delegate = self;
        // Do any additional setup after loading the view.
        var calenderView:CalenderView = CalenderView(frame: CGRectMake(0, 80,
            UIScreen.mainScreen().bounds.size.width, 500));
        self.view.addSubview(calenderView)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    
    
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        println("sideMenuWillOpen")
    }
    
    func sideMenuWillClose() {
        println("sideMenuWillClose")
    }
    
    func sideMenuShouldOpenSideMenu() -> Bool {
        println("sideMenuShouldOpenSideMenu")
        return false;
    }
    
/*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
