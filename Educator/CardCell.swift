//
//  CardCell.swift
//  Educator
//
//  Created by Marwan Khalid on 4/24/21.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet var itemImg: UIImageView!
    @IBOutlet var itemTitle: UILabel!
    @IBOutlet var itemDescription: UILabel!
    @IBOutlet var itemPrice: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
