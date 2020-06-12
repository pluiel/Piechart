//
//  ViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/05/21.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //from FinishView to View
    @IBAction func back(sender: UIStoryboardSegue) {
        //アラートで"お疲れ様でした"の表示をする
        
    }
    //関連付けを行う
    @IBAction func createButtonTapped() {
        //saveData
        let saveData = UserDefaults.standard
        //saveDataから配列を取り出す
        if saveData.array(forKey: "Chart") != nil {
            //要素数を取得count
            if saveData.array(forKey: "Chart")!.count > 0 {
                //PiechartViewへ
                performSegue(withIdentifier: "toPiechartView", sender: nil)
            }else {
                //alertの表示
                let alert = UIAlertController(
                    title: "データ入力", message: "グラフデータを入力してください！", preferredStyle: .alert
                )
                //"OK"Action
                alert.addAction(UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: nil))
                //遷移先に移動
                self.present(alert, animated: true, completion: nil)
                //遷移先閉じる時は self.dismiss(animated: true, completion: nil)
            }
        }
    }





}
