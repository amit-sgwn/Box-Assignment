//
//  ViewController.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class ViewController:  UICollectionViewController, CustomLayoutDelegate //UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    
    public var customCollectionViewLayout: UICustomCollectionViewLayout? {
        get {
            return collectionViewLayout as? UICustomCollectionViewLayout
        }
        set {
            if newValue != nil {
                self.collectionView?.collectionViewLayout = newValue!
            }
        }
    }
    
    struct Model {
        var index: Int
        var isBig: Bool
    }
    
    private let dataSet = [Model(index: 1, isBig: true), Model(index: 2, isBig: false), Model(index: 3, isBig: false),
                           Model(index: 4, isBig: true), Model(index: 5, isBig: false), Model(index: 6, isBig: false),
                           Model(index: 7, isBig: false), Model(index: 8, isBig: false), Model(index: 9, isBig: true),
                           Model(index: 10, isBig: true), Model(index: 11, isBig: false), Model(index: 12, isBig: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customCollectionViewLayout?.delegate = self
        self.customCollectionViewLayout?.numberOfColumns = 2
        //self.customCollectionViewLayout?.cellPadding = 30
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MyCollectionViewCell
        cell?.itemName.text = "\(dataSet[indexPath.row].index)"
        cell?.backgroundColor = UIColor.cyan
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        heightForItemAt
        indexPath: IndexPath,
                        with width: CGFloat) -> CGFloat {
        
        let heightSizes = [100,216]
        return CGFloat(heightSizes[dataSet[indexPath.row].isBig ? 1 : 0])
    }
//    fileprivate let itemsPerRow: CGFloat = 2
//
//
//    fileprivate let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
//
//    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
//    var items = ["1", "2", "3", "4", "5", "6","7","8"]
//
//
//    // MARK: - UICollectionViewDataSource protocol
//
//    // tell the collection view how many cells to make
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return self.items.count
//    }
//
//    // make a cell for each cell index path
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        // get a reference to our storyboard cell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
//
//        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//        cell.itemName.text = self.items[indexPath.item]
//        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
//
//        return cell
//    }
//
//    // MARK: - UICollectionViewDelegate protocol
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        // handle tap events
//        print("You selected cell #\(indexPath.item)!")
//    }

}


//extension ViewController : UICollectionViewDelegateFlowLayout {
//    //1
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        sizeForItemAt indexPath: IndexPath) -> CGSize {
//        //2
//        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
//        let availableWidth = view.frame.width - paddingSpace
//        let widthPerItem = availableWidth / itemsPerRow
//
//        if Int(indexPath.row) % 3 == 0
//        {
//            return CGSize(width: widthPerItem, height: widthPerItem * 2)
//        }
//        else
//        {
//             return CGSize(width: widthPerItem, height: widthPerItem )
//        }
//
//    }
//
//    //3
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        insetForSectionAt section: Int) -> UIEdgeInsets {
//        return sectionInsets
//    }
//
//    // 4
//    func collectionView(_ collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return sectionInsets.left
//    }
//}
//

