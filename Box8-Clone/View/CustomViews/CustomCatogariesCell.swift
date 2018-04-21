//
//  CustomCatogariesCell.swift
//  Box8-Clone
//
//  Created by Amit on 21/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class CustomCatogariesCell: UICollectionViewCell {
    
    @IBOutlet weak var catogeryImage: UIImageView!
    @IBOutlet weak var catogeryName: UILabel!
    
    
    var identifier = "cell"
    
}


public protocol CustomLayoutDelegate
{
      func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath, with width: CGFloat) -> CGFloat
}
