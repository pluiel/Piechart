//
//  AddTextViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/06/08.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class AddTextViewController: UIViewController {
    
   
    
   @IBOutlet weak var kadaiTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    //空の配列を作成,配列の要素が辞書(String型、Int型)
    var chartArray: [Dictionary<String, Int>] = []
    //saveData
    let saveData = UserDefaults.standard
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if saveData.array(forKey: "Chart") != nil  {
            //具体的な型として扱う(ダウンキャスト)
            chartArray = saveData.array(forKey: "Chart") as! [Dictionary<String, Int>]
        }
    }
        
    @IBAction func saveChart() {
        
        var time: String = "time"
        Int(time)
        let chartDictionary = ["kadai" : kadaiTextField.text!, "time" : timeTextField.text!]
       
        //appendで要素を追加
        chartArray.append(chartDictionary)
        saveData.set(chartArray, forKey: "Chart")
        
        let alert = UIAlertController(
                   title: "保存完了",
                   message: "データの登録が完了しました",
                   preferredStyle: .alert
               )
               alert.addAction(UIAlertAction(
                   title: "OK",
                   style: .default,
                   handler: nil
               ))
               present(alert, animated: true, completion: nil)
               kadaiTextField.text = ""
               timeTextField.text = ""
           }
       
      
    }
    

   


