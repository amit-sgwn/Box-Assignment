//
//  FoodItem.swift
//  Box8-Clone
//
//  Created by Amit on 21/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import Foundation

struct FoodItem
{
    var name : String
    var type : typeOfFood
    var size : SizeOfFood
    var tasteOfFood : Taste
    var price : Float
    var discount : Float = 0.0
    
}

enum SizeOfFood
{
    case small , medium , combo
}

enum Taste : String
{
    case sweet , mediumSpicy,Spicy
}
