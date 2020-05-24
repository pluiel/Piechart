//
//  AddViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/05/24.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    class AddViewController: UIViewController {
        
        @IBOutlet var nameTextField: UITextField!
        @IBOutlet var timeTextField: UITextField!
        
         var wordArray: [Dictionary<String, String>] = []
        
         let  saveDate = UserDefaults.standard
        
         override func viewDidLoad() {
            super.viewDidLoad()
            if saveDate.array(forKey: "WORD") != nil{
                wordArray = saveDate.array(forKey: "WORD") as! [Dictionary<String, String>]
            }
        }
        

}
}
