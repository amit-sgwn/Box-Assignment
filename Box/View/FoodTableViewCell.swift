//
//  FoodTableViewCell.swift
//  Box
//
//  Created by Amit on 15/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var FooditemBoxView: UIView!
    @IBOutlet weak var foodItemImage: UIImageView!
    
    @IBOutlet weak var foodItemQuality: UILabel!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
