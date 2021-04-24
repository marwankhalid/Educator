//
//  AttendanceVC.swift
//  Educator
//
//  Created by Marwan Khalid on 4/24/21.
//

import UIKit

struct Attendance {
    var title:String
    var classValue:String
    var examValue:String
}



class AttendanceVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var attendance: UILabel!
    
    
    
    var dataSource = [Attendance]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
        tableView.backgroundColor = UIColor.black
        dataSource.append(Attendance(title: "Research MEthods for Computing and Technology", classValue: "17/18 (94%)", examValue: "***"))
        dataSource.append(Attendance(title: "Enterprise Internet of Things", classValue: "15/18 (83%)", examValue: "***"))
        dataSource.append(Attendance(title: "Creaticity and Innovation", classValue: "16/18 (89%)", examValue: "***"))
        dataSource.append(Attendance(title: "Employee and Employement Trends", classValue: "9/9 (100%)", examValue: "***"))
        tableView.reloadData()
        
        
        
    }
 
}

// MARK: setup Table View
extension AttendanceVC:UITableViewDelegate,UITableViewDataSource {
    
    func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 90
    }
    
    
    
    // How many items are in array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    
    // We will bind data to views
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttendenceCell") as! AttendenceCell
        cell.itemTitle.text = dataSource[indexPath.row].title
        cell.itemClass.text = "Classes:"
        cell.itemClassValue.text = dataSource[indexPath.row].classValue
        cell.itemExam.text = "Exam Eligibility:"
        cell.itemClassValue.textColor = UIColor.green
        cell.itemExam.font = UIFont(name: "Times New Roman", size: 11)
        cell.itemClass.font = UIFont(name: "Times New Roman", size: 11)
        cell.itemExamValue.text = dataSource[indexPath.row].examValue
        cell.itemExamValue.textColor = UIColor.red
        
        
        return cell
    }
    
  
    
}



