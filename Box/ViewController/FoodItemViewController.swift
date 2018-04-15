//
//  FoodItemViewController.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

class FoodItemViewController: UIViewController , UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var foodtabel: UITableView!

    let cellReuseIdentifier = "foodTable"
    
    var items  = FoodItemObjects()
    var fusion  : [[FoodItem]]? = nil   //= .items.ge
    var viewIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFoodItems()
        // Register the table view cell class and its reuse id
        self.foodtabel.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        foodtabel.delegate = self
        foodtabel.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func setFoodItems()
    {
        fusion?.append(items.getFusionBoxitems())
        fusion?.append(items.getCurries())
        fusion?.append(items.getBiryaniItems())
        fusion?.append(items.getWraps())
        fusion?.append(items.getIceCreamItems())
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fusion![viewIndex].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : FoodTableViewCell = self.foodtabel.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! FoodTableViewCell!
        
        let foodItem = fusion![viewIndex][indexPath.row]
        
        cell.foodItemImage.image = UIImage(named: "\(indexPath.row).png")
        cell.foodName.text = foodItem.name
        cell.foodItemQuality.text = foodItem.quality.simpleDescription()
        cell.foodDescription.text = foodItem.description
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
