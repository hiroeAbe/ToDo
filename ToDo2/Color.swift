//
//  Color.swift
//  ToDo2
//
//  Created by 阿部弘枝 on 2015/02/17.
//  Copyright (c) 2015年 阿部弘枝. All rights reserved.
//

class TrafficLight {
    
    private var currentState: State = StateGreen()
    
    var state: State {
        get {
            return currentState
        }
        set {
            currentState = newValue
        }
    }
    
    var color: UIColor {
        get {
            return currentState.color
        }
    }
    
    func changeColor() {
        currentState.goNext(self)
    }
}