//
//  ViewController.swift
//  Box8-Clone
//
//  Created by Amit on 18/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate, UICollectionViewDelegate,UICollectionViewDataSource,CustomLayoutDelegate {
  
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var scrollViewWidth: NSLayoutConstraint!
    @IBOutlet weak var scrollViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var pageControl : UIPageControl!
    @IBOutlet weak var scrollView : UIScrollView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    

    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    var viewModel = CatogeryViewModel()
    var names = ["Fusion Box","Curries","Biryani","Wraps","Ice Cream"]
    
    var customCollectionViewLayout = UICustomCollectionViewLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewWidth.constant = self.view.frame.size.width
        pageControl.numberOfPages = viewModel.images.count
       
        scrollViewHeight.constant = 248
        scrollView.delegate = self
        self.categoriesCollectionView.delegate = self
        categoriesCollectionView.collectionViewLayout = customCollectionViewLayout
        self.customCollectionViewLayout.delegate = self
        self.customCollectionViewLayout.numberOfColumns = 2
    }
    
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        for index in 0..<viewModel.images.count
        {
            frame.origin.x = (scrollViewWidth.constant  * CGFloat(index)) + 10 //scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            frame.size = CGSize(width: scrollViewWidth.constant - 20 , height: scrollView.frame.size.height)
            
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: viewModel.images[index])
            imageView.layer.cornerRadius = 8
            imageView.clipsToBounds = true
            scrollView.addSubview(imageView)
        }
        scrollView.contentSize = CGSize(width: scrollViewWidth.constant * CGFloat(viewModel.images.count), height: scrollView.frame.size.height)
        //self.imageView.frame = self.view.bounds
        
    }

 
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
    @IBAction func showMenuItems(_ sender: Any) {
        
        if !(viewModel.getMenuDisplayState())
        {
            leadingConstraint.constant = 250
            trailingConstraint.constant = -250
            mainView.alpha = 0.5
         //  isHamburgerShown = !isHamburgerShown
        }
        else
        {
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            mainView.alpha = 1.0
        }
        viewModel.invertMenuDisplayState()
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        }, completion: {animation in
            print("hello")
        })
        
    }
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.getDataSet().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCatogariesCell
        cell?.catogeryName.text =  "\(names[(indexPath.row) % 5])" //"\(dataSet[indexPath.row].index)"
        cell?.backgroundColor = UIColor.cyan
        cell?.catogeryImage.image = UIImage(named: "\(arc4random() % 5)")
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath, with width: CGFloat) -> CGFloat {
        
        let heightSizes = [width - 2,(width * 2) ]
        return CGFloat(heightSizes[(viewModel.getDataSet()[indexPath.row]).isBig ? 1 : 0])//dataSet[indexPath.row].isBig ? 1 : 0])
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let destination = storyboard.instantiateViewController(withIdentifier: "CustomPageViewController") as! CustomPageViewController
//        navigationController?.pushViewController(destination, animated: true)
        
    }
    
}

