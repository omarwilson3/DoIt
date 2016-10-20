//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Omar Wilson on 10/20/16.
//  Copyright © 2016 Omar Wilson. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
     var previousViewController = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "❗️ \(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }

    @IBAction func competeTapped(_ sender: AnyObject) {
        previousViewController.tasks.remove(at: previousViewController.selectedIndex)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }


}
