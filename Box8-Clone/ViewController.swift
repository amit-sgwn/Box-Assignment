//
//  ViewController.swift
//  Box8-Clone
//
//  Created by Amit on 18/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuWidthConstraint: NSLayoutConstraint!
    
    var isHamburgerShown = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMenuItems(_ sender: Any) {
        
        if !isHamburgerShown
        {
            leadingConstraint.constant = 250
            trailingConstraint.constant = -250
            isHamburgerShown = !isHamburgerShown
        }
        else{
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            isHamburgerShown = !isHamburgerShown
        }
        
    }
    
}

