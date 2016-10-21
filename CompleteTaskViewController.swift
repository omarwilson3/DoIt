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
    var task : Task? = nil
    // var previousViewController = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "❗️ \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }

    }

    @IBAction func competeTapped(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        navigationController!.popViewController(animated: true)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }


}
