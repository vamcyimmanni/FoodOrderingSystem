//
//  MenuItemsCell.swift
//  Food Ordering System
//
//  Created by Immani, Vamsi (ES) on 12/20/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class MenuItemsCell: UITableViewCell {
    
    
    @IBOutlet var foodItemImageView: UIImageView!
    
    @IBOutlet var foodItemNameLabel: UILabel!
    
    @IBOutlet var foodItemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
