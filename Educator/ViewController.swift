//
//  ViewController.swift
//  Educator
//
//  Created by Marwan Khalid on 4/14/21.
//

import UIKit
import DropDown


struct Home {
    var name:String
    var time:String
    var location:String
    var teacherName:String
    var classCode:String
    var day:String
}

class ViewController: UIViewController {
    
    // Views
    @IBOutlet var classDropDown: UIView!
    @IBOutlet var DateDropDown: UIView!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!
    
    
    // Fields
    var dataSource = [Home]()
    var dataSourceClass = [String]()
    var db = DBHelper()
    let dropDown = DropDown()
    var timetableDataSource = [Home]()

    
    // Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertData()
        self.DateDropDown.isHidden = true
        setupGesture()
        setTableView()
        classDropDown.layer.cornerRadius = 10
        classDropDown.layer.borderWidth = 2.0
        classDropDown.layer.borderColor = UIColor.link.cgColor
        DateDropDown.layer.cornerRadius = 10
        DateDropDown.layer.borderWidth = 2.0
        DateDropDown.layer.borderColor = UIColor.link.cgColor
        
        // selected option color
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        // color of other options
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        
    }

    @IBAction func switchSegment(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            timetableDataSource = [Home]()
            for i in 0..<dataSource.count{
                if dataSource[i].day == "MON"{
                    timetableDataSource.append(Home(name: dataSource[i].name, time: dataSource[i].time, location: dataSource[i].location, teacherName: dataSource[i].teacherName, classCode: dataSource[i].classCode, day: dataSource[i].day))
                    tableView.reloadData()
                }
            }
        }else if segmentControl.selectedSegmentIndex == 1 {
            timetableDataSource = [Home]()
            for i in 0..<dataSource.count{
                if dataSource[i].day == "TUE"{
                    timetableDataSource.append(Home(name: dataSource[i].name, time: dataSource[i].time, location: dataSource[i].location, teacherName: dataSource[i].teacherName, classCode: dataSource[i].classCode, day: dataSource[i].day))
                    tableView.reloadData()
                }
            }
        }else if segmentControl.selectedSegmentIndex == 2 {
            timetableDataSource = [Home]()
            for i in 0..<dataSource.count{
                if dataSource[i].day == "WED"{
                    timetableDataSource.append(Home(name: dataSource[i].name, time: dataSource[i].time, location: dataSource[i].location, teacherName: dataSource[i].teacherName, classCode: dataSource[i].classCode, day: dataSource[i].day))
                    tableView.reloadData()
                }
            }
        }else if segmentControl.selectedSegmentIndex == 3 {
            timetableDataSource = [Home]()
            for i in 0..<dataSource.count{
                if dataSource[i].day == "THU"{
                    timetableDataSource.append(Home(name: dataSource[i].name, time: dataSource[i].time, location: dataSource[i].location, teacherName: dataSource[i].teacherName, classCode: dataSource[i].classCode, day: dataSource[i].day))
                    tableView.reloadData()
                }
            }
        }else if segmentControl.selectedSegmentIndex == 4 {
            timetableDataSource = [Home]()
            for i in 0..<dataSource.count{
                if dataSource[i].day == "FRI"{
                    timetableDataSource.append(Home(name: dataSource[i].name, time: dataSource[i].time, location: dataSource[i].location, teacherName: dataSource[i].teacherName, classCode: dataSource[i].classCode, day: dataSource[i].day))
                    tableView.reloadData()
                }
            }
        }
    }
    
    private func setupGesture(){
        classDropDown.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapClassDropDown)))
//        cl.addTarget(self, action: #selector(tapGenderT), for: .touchDown)
        
    }
    
    @objc func tapClassDropDown() {
        dataSourceClass = [String]()
        dataSourceClass = ["UC2F2008IT(IOT)","APU1F2009IT","APU1F2009BM","APU1F2009CE","APU1F2009CS","APU1F2009AF"]
        setUpDropDown(view: classDropDown,dataSource: dataSourceClass)
    }
    
    private func setUpDropDown(view:UIView,dataSource:[String]){
        dropDown.dataSource = dataSource
        dropDown.anchorView = view
        dropDown.bottomOffset = CGPoint(x: 0, y: (view as AnyObject).frame.size.height)
        dropDown.show()
        dropDown.selectionAction = { [weak self] (index: Int, item: String) in
            guard let _ = self else { return }
            print(item)
        }
    }
    
}


// MARK: setup Table View
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
    }
    
    
    
    // How many items are in array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timetableDataSource.count
    }
    
    
    // We will bind data to views
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell
        cell.className.text = timetableDataSource[indexPath.row].name
        cell.location.text = timetableDataSource[indexPath.row].location
        cell.timing.text = timetableDataSource[indexPath.row].time
        cell.teacherName.text = timetableDataSource[indexPath.row].teacherName
        
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.black
        }else {
            cell.contentView.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.1529411765, alpha: 1)
        }
        
        
        return cell
    }
    
}



