//
//  ViewController.swift
//  Box8-Clone
//
//  Created by Amit on 18/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate {
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var scrollViewWidth: NSLayoutConstraint!
    @IBOutlet weak var scrollViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var pageControl : UIPageControl!
    @IBOutlet weak var scrollView : UIScrollView!
    
    var images = ["0","1","2","3","4","5","6","7","8","9","10","11"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    var isHamburgerShown = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewWidth.constant = self.view.frame.size.width
        pageControl.numberOfPages = images.count
       
      

        scrollViewHeight.constant = 248
        scrollView.delegate = self
    }
    
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        for index in 0..<images.count
        {
            frame.origin.x = (scrollViewWidth.constant  * CGFloat(index)) + 10 //scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            frame.size = CGSize(width: scrollViewWidth.constant - 20 , height: scrollView.frame.size.height)
            
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: images[index])
            imageView.layer.cornerRadius = 8
            imageView.clipsToBounds = true
            scrollView.addSubview(imageView)
        }
        scrollView.contentSize = CGSize(width: scrollViewWidth.constant * CGFloat(images.count), height: scrollView.frame.size.height)
        //self.imageView.frame = self.view.bounds
        
    }

 
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
    @IBAction func showMenuItems(_ sender: Any) {
        
        if !isHamburgerShown
        {
            leadingConstraint.constant = 250
            trailingConstraint.constant = -250
            mainView.alpha = 0.5
            isHamburgerShown = !isHamburgerShown
            
        }
        else{
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            mainView.alpha = 1.0
            isHamburgerShown = !isHamburgerShown
        }
        
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        }, completion: {animation in
            print("hello")
        })
        
    }
    
}

