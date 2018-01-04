//
//  ViewController.swift
//  Todo
//
//  Created by Dariusz on 04.01.2018.
//  Copyright © 2018 Dariusz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let todo = todoList {
            return todo.count
        }else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = todoList {
            cell.textLabel?.text = todo[indexPath.row]
        }
        return cell
    }
}

