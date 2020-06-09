//
//  ListTableViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/06/08.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    //配列を宣言
    var chartArray: [Dictionary<String, String>] = []
    //saveData
    let saveDate = UserDefaults.standard
    //初期表示
    //tableViewの高さ
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
    }
    //viewが現れる直前に呼ばれる(毎回)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    //saveDataから配列を取り出す
        if saveDate.array(forKey: "Chart") != nil {
            chartArray = saveDate.array(forKey: "Chart") as! [Dictionary<String, String>]
        }
    //すべてのデータの再読み込み
      tableView.reloadData()
    }
    //セクション数の指定
    override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
    }
    //セルの個数の指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:
       Int) -> Int {
        //arrayの要素数の取得
        return chartArray.count
    }

    // セルの中身の表示の仕方
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            //cellの再利用
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           as! ListTableViewCell
            //chartArrayからDictionaryを取り出す
            let nowIndexPathDictionary = chartArray[indexPath.row]
            //ラベルに代入
            cell.kadaiLabel.text = nowIndexPathDictionary["kadai"]
            cell.timeLabel.text = nowIndexPathDictionary["time"]

            return cell
     }
    
}
