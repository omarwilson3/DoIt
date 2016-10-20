//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Omar Wilson on 10/19/16.
//  Copyright © 2016 Omar Wilson. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousViewController = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        // create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        previousViewController.tasks.append(task)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }


}
