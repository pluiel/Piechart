//
//  AddTextViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/06/08.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class AddTextViewController: UIViewController {
    
    @IBOutlet weak var kadailabel: UILabel!
    @IBOutlet weak var timelabel: UILabel!
    
    @IBOutlet weak var kadaiTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    

    var chartArray: [Dictionary<String, Int>] = []
    
    let saveData = UserDefaults.standard
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if saveData.array(forKey: "Chart") != nil {
            chartArray = saveData.array(forKey: "Chart") as! [Dictionary<String, Int>]
        }
    }
        
    @IBAction func saveChart() {
        
        let chartDictionary:[Dictionary<String, Int>] = ["kadai": kadaiTextField.text!, "time": timeTextField.text!]
        
        chartArray.append(chartDictionary)
        saveData.set(chartArray, forKey: "Chart")
       
      
           }
    }
    

   


