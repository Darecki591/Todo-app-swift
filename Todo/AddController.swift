//
//  AddController.swift
//  Todo
//
//  Created by Dariusz on 04.01.2018.
//  Copyright © 2018 Dariusz. All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func addPressed(_ sender: UIButton) {
        
         if (textField.text != nil) && textField.text != "" {
            todoList?.append(textField.text!)
            
            textField.placeholder = "Add More?"
        }
    }

}
