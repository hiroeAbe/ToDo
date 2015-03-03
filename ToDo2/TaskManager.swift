import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "non-named"
    var color = 0
   
}

class TaskManager: NSObject {

    var tasks :[task] = []
    
    func addTask(name : String,color:Int){
        tasks.append(task(name: name,color:color))
    }
}
