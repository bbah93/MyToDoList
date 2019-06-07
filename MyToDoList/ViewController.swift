//
//  ViewController.swift
//  MyToDoList
//
//  Created by Bobby Bah on 6/7/19.
//  Copyright © 2019 Bobby Bah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInputField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleAddTaskButtonPress(_ sender: Any) {
        addNewTask()
    }
    
 
    
    func addNewTask(){
        if (userInputField.text != "") {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
            let newTask = Task(context:context)
            newTask.taskName = userInputField?.text
            
            newTask.taskName = userInputField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print(newTask.taskName!) //for testing purposes only
            userInputField.text = ""
            userInputField.resignFirstResponder()
        }
    }
}

