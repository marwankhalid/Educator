//
//  HomeCell.swift
//  Educator
//
//  Created by Marwan Khalid on 4/14/21.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet var viewColor: UIView!
    @IBOutlet var className: UILabel!
    @IBOutlet var timing: UILabel!
    @IBOutlet var location: UILabel!
    @IBOutlet var teacherName: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
