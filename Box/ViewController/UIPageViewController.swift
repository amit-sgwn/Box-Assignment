//
//  UIPageViewController.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit
import BmoViewPager

private let mainColor = UIColor(red: 1.0/255.0, green: 55.0/255.0, blue: 132.0/255.0, alpha: 1.0)

class UIPageViewController: UIViewController {

    @IBOutlet weak var viewPager: BmoViewPager!
    @IBOutlet weak var viewPagerNavigationBar: BmoViewPagerNavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewPager.dataSource = self
        viewPager.scrollable = false
        
        let navigationBar = BmoViewPagerNavigationBar(frame: CGRect(origin: .zero, size: .init(width: 200, height: 30)))
        self.navigationItem.titleView = navigationBar
        navigationBar.backgroundColor = UIColor.clear
        navigationBar.viewPager = viewPager
        
    }


}


extension UIPageViewController : BmoViewPagerDataSource {
   
    func bmoViewPagerDataSourceNaviagtionBarItemNormalAttributed(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> [NSAttributedStringKey : Any]? {
        return [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 17.0),
            NSAttributedStringKey.foregroundColor : UIColor.groupTableViewBackground
        ]
    }
    func bmoViewPagerDataSourceNaviagtionBarItemHighlightedAttributed(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> [NSAttributedStringKey : Any]? {
        return [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 17.0),
            NSAttributedStringKey.foregroundColor : mainColor
        ]
    }
    func bmoViewPagerDataSourceNaviagtionBarItemHighlightedBackgroundView(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> UIView? {
        let view = UnderLineView()
        view.marginX = 8.0
        view.lineWidth = 5.0
        view.strokeColor = mainColor
        return view
    }
    func bmoViewPagerDataSourceNaviagtionBarItemTitle(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> String? {
        return "Demo \(page)"
    }
    
    // Required
    func bmoViewPagerDataSourceNumberOfPage(in viewPager: BmoViewPager) -> Int {
        return 4
    }
    func bmoViewPagerDataSource(_ viewPager: BmoViewPager, viewControllerForPageAt page: Int) -> UIViewController {
        switch page {
        case 0:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DemoViewController0") as? DemoViewController0 {
                return vc
            }
        case 1:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DemoViewController1") as? DemoViewController1 {
                return vc
            }
        case 2:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DemoViewController2") as? DemoViewController2 {
                return vc
            }
        case 3:
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DemoViewController3") as? DemoViewController3 {
                return vc
            }
        default:
            break
        }
        return UIViewController()
    }
}
