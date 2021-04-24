//
//  CardVC.swift
//  Educator
//
//  Created by Marwan Khalid on 4/24/21.
//

import UIKit


struct Card {
    var image:UIImage
    var title:String
    var description:String
    var price:String
}

class CardVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    
    
    var dataSource = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTableView()
        tableView.backgroundColor = UIColor.black
        dataSource.append(Card(image: UIImage(systemName: "person")!, title: "RICE", description: "WED, 22 Jan 2020", price: "RM2.00"))
        dataSource.append(Card(image: UIImage(systemName: "person")!, title: "Add Chicken Chop", description: "WED, 22 Jan 2020", price: "RM8.00"))
        dataSource.append(Card(image: UIImage(systemName: "person")!, title: "Bottle Water", description: "Thu, 16 Jan 2020", price: "RM2.00"))
        dataSource.append(Card(image: UIImage(systemName: "person")!, title: "RICE", description: "Tue, 14 Jan 2020", price: "RM2.00"))
        tableView.reloadData()
        
    }
    

}

// MARK: setup Table View
extension CardVC:UITableViewDelegate,UITableViewDataSource {
    
    func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
    }
    
    
    
    // How many items are in array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    
    // We will bind data to views
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell") as! CardCell
        
        cell.itemImg.image = dataSource[indexPath.row].image
        cell.itemTitle.text = dataSource[indexPath.row].title
        cell.itemDescription.text = dataSource[indexPath.row].description
        cell.itemPrice.setTitle(dataSource[indexPath.row].price, for: .normal)
        
        
        return cell
    }
    
  
    
}




