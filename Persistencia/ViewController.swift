//
//  ViewController.swift
//  Persistencia
//
//  Created by Henrique Souza on 23/07/16.
//  Copyright © 2016 Henrique Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard().set("Henrique", forKey: "name")
        let name = UserDefaults.standard().object(forKey: "name")!
        print(name)
        
        let arr = [1, 2, 3, 4]
        UserDefaults.standard().set(arr, forKey: "array")
        let userArray = UserDefaults.standard().object(forKey: "array")! as! NSArray //Conert to array to use in for loop
        //print(userArray)
        
        for x in userArray {
                print(x)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

