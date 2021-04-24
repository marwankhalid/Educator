//
//  AttendenceCell.swift
//  Educator
//
//  Created by Marwan Khalid on 4/24/21.
//

import UIKit

class AttendenceCell: UITableViewCell {

    @IBOutlet var itemTitle: UILabel!
    @IBOutlet var itemClass: UILabel!
    @IBOutlet var itemClassValue: UILabel!
    @IBOutlet var itemExam: UILabel!
    @IBOutlet var itemExamValue: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
