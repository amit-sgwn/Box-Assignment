//
//  Restaurent.swift
//  Box8-Clone
//
//  Created by Amit on 21/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import Foundation


class Restaurant
{
    var type : typeOfFood = .veg
    var isOpen = true
    var name : String
    var address : String
    
    init(name : String,address : String)
    {
        self.name = name
        self.address = address
    }
    
}


enum typeOfFood : String
{
    case veg
    case nonVeg
}
