//
//  FeesVC.swift
//  Educator
//
//  Created by Marwan Khalid on 4/23/21.
//

import UIKit
import Charts

class FeesVC: UIViewController {

    @IBOutlet var pieChartV: PieChartView!
    
    
    
    var courseFee = PieChartDataEntry(value: 0)
    var accomodations = PieChartDataEntry(value: 0)
    var emgs = PieChartDataEntry(value: 0)
    var shuttleCard = PieChartDataEntry(value: 0)
    var others = PieChartDataEntry(value: 0)
    
    var numbers = [PieChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        courseFee.value = 10
        courseFee.label = "Course Fee"
        accomodations.value = 20
        accomodations.label = "Accomodation"
        emgs.value = 10
        emgs.label = "Emgs"
        shuttleCard.value = 30
        shuttleCard.label = "Shuttle"
        others.value = 30
        others.label = "Others"
        numbers = [courseFee,accomodations,emgs,shuttleCard,others]
        
        
        updateCHartData()
        
        
        
    }
    
    func updateCHartData(){
        let chartDataSet = PieChartDataSet(entries: numbers, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        let colors = [#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)]
        chartDataSet.colors = colors as! [NSUIColor]
        self.pieChartV.data = chartData
    }
    

}
