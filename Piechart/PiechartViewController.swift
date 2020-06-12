//
//  PiechartViewController.swift
//  Piechart
//
//  Created by Yuka Uematsu on 2020/06/08.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//
import Charts
import UIKit

class PiechartViewController: UIViewController, ChartViewDelegate {
    
    
    var pieChart = PieChartView()
    
     var chartArray: [Dictionary<String, String>] = []//UserDefaultからとる配列
     let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     //レイアウト制約?の後に呼ばれる
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //viewの追加、pieChart!
        view.addSubview(pieChart)
        //制約つける
        pieChart.frame = CGRect(x: 0 , y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        pieChart.center = view.center
        //以下piechartの詳細
        pieChart.centerText = "合計時間" //timeの計算式なり書く
        pieChart.highlightPerTapEnabled = true  // グラフがタップされたときのハイライト
        pieChart.chartDescription?.enabled = true  // グラフの説明
        pieChart.drawEntryLabelsEnabled = true  // グラフ上のデータラベル
        pieChart.legend.enabled = true  // グラフの注釈
        pieChart.rotationEnabled = true // グラフがぐるぐる動く
        
        var entries : [ChartDataEntry] = chartArray
        
        for ({
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        
        
}
       // グラフに表示するデータセット
        let dataSet = PieChartDataSet(entries: entries)
        
        dataSet.setColors(UIColor.green, UIColor.blue)

        dataSet.drawValuesEnabled = true  // グラフ上のデータ値

        pieChart.data = PieChartData(dataSet: dataSet)
    }
    
      //performSegue(withIdentifier: "toFinishView", sender: nil)
   

}
