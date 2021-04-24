//
//  NewsVC.swift
//  Educator
//
//  Created by Marwan Khalid on 4/23/21.
//

import UIKit

struct News {
    var image:UIImage
    var newsType:String
    var description:String
}

class NewsVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    
    var dataSource = [News]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.append(News(image: UIImage(systemName: "person")!, newsType: "Travel", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."))
        dataSource.append(News(image: UIImage(systemName: "person")!, newsType: "Travel", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."))
        dataSource.append(News(image: UIImage(systemName: "person")!, newsType: "Travel", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."))
        setTableView()
        
    }

}

// MARK: setup Table View
extension NewsVC:UITableViewDelegate,UITableViewDataSource {
    
    func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 110
    }
    
    
    
    // How many items are in array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    
    // We will bind data to views
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsCell
        cell.itemImg.image = dataSource[indexPath.row].image
        cell.newsDescription.text = dataSource[indexPath.row].description
        cell.newsType.setTitle(dataSource[indexPath.row].newsType, for: .normal)
        cell.cardV.layer.cornerRadius = 25.0
        
//        if indexPath.row % 2 == 0 {
//            cell.cardV.backgroundColor = UIColor.black
//        }else {
//            cell.cardV.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.1529411765, alpha: 1)
//        }
        
        
        return cell
    }
    
  
    
}
