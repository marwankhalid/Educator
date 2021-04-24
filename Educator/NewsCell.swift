//
//  NewsCell.swift
//  Educator
//
//  Created by Marwan Khalid on 4/23/21.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet var itemImg: UIImageView!
    @IBOutlet var newsType: UIButton!
    @IBOutlet var newsDescription: UILabel!
    @IBOutlet var cardV: UIView!
    @IBOutlet var share: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBAction func share(_ sender: Any) {
    }
    
}
