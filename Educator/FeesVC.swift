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
    @IBOutlet var fine: UILabel!
    @IBOutlet var fineValue: UILabel!
    @IBOutlet var overdue: UILabel!
    @IBOutlet var overdueValue: UILabel!
    @IBOutlet var paid: UILabel!
    @IBOutlet var paidValue: UILabel!
    @IBOutlet var outStanding: UILabel!
    @IBOutlet var outStandingValue: UILabel!
    @IBOutlet var payable: UILabel!
    @IBOutlet var payableValue: UILabel!
    
    @IBOutlet var cardV: UIView!
    
    var courseFee = PieChartDataEntry(value: 0)
    var accomodations = PieChartDataEntry(value: 0)
    var emgs = PieChartDataEntry(value: 0)
    var shuttleCard = PieChartDataEntry(value: 0)
    var others = PieChartDataEntry(value: 0)
    var numbers = [PieChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseFee.value = 70
        accomodations.value = 10
        emgs.value = 10
        shuttleCard.value = 0
        others.value = 10
        numbers = [courseFee,accomodations,emgs,shuttleCard,others]
        updateCHartData()
        setDataOnLabels()
        
    }
    
    func updateCHartData(){
        let chartDataSet = PieChartDataSet(entries: numbers, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        let colors = [#colorLiteral(red: 0, green: 0.5361724496, blue: 0.9026536942, alpha: 1),#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1),#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1),#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1),#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)]
        chartDataSet.colors = colors
        self.pieChartV.data = chartData
    }
    
    private func setDataOnLabels(){
        fine.text = "Fine"
        fineValue.text = "RM110.00"
        overdue.text = "Overdue"
        overdueValue.text = "RM,220.00"
        paid.text = "Paid"
        paidValue.text = "RM69,709.00"
        outStanding.text = "Outstanding"
        outStandingValue.text = "RM5,320.00"
        payable.text = "Payable"
        payableValue.text = "RM75,029.00"
        cardV.layer.cornerRadius = 20
    }
    
    
}
