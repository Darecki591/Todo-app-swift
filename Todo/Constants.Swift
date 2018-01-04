//
//  Constants.Swift
//  Todo
//
//  Created by Dariusz on 04.01.2018.
//  Copyright © 2018 Dariusz. All rights reserved.
//

import Foundation
var todoList:[String]?

func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    }
    else {
        return nil 
    }
}
