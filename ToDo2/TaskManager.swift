import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name:NSArray = []
    var color = 0
   
}

class TaskManager: NSObject {

    var tasks :[task] = []
    
    func addTask(name : NSArray,color:Int){
        tasks.append(task(name: name,color:color))
    }
}
