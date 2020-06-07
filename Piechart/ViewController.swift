//
//  ViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/05/21.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController, UITableViewDelegate,
    UITableViewDataSource, UITextFieldDelegate{
    
    
    @IBOutlet weak var kadai: UILabel!
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var kadaitextField: UITextField!
    @IBOutlet weak var timetextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var kadaitextArray = [String]()
    var timetextArray = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        kadaitextField.delegate = self
        timetextField.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return kadaitextArray.count
}

   
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            cell.textLabel?.text = kadaitextArray[indexPath.row]
            
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC =
            storyboard?.instantiateViewController(identifier: "next") as!
        NextViewController
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/12
        
    }
    
    func kadaitextFieldShouldReturn(_ textField: UITextField) -> Bool {
        kadaitextArray.append(textField.text!)
        kadaitextField.resignFirstResponder()
        kadaitextField.text = ""
        tableView.reloadData()
        
        return true
    }
    
}
