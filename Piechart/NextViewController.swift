//
//  NextViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/05/27.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var kadaiString = String()
    @IBOutlet weak var kadailabel: UILabel!
    @IBOutlet weak var timelabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        kadailabel.text = kadaiString
        timelabel.text = timeString
    }
    

   

}
