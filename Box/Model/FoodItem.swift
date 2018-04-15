//
//  FoodItem.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import Foundation


class FoodItem
{
    var name : String
    var description : String
    var price : Float
    var type : TypeOfFood
    var quality : TypeOfQuality
    var category : TypeOfCatogries
    
    init(name : String, description : String , price : Float, type : TypeOfFood?,quality : TypeOfQuality? , category : TypeOfCatogries)
    {
        self.name = name
        self.description = description
        self.price = price
        if let type = type
        {
            self.type = type
        }
        else
        {
            self.type = .vag
        }
        
        if let quality = quality
        {
            self.quality = quality
        }
        else
        {
            self.quality = .CLASSIC
        }
        self.category = category
    }
    
    func getDiscountedPrice(percentege : Float)
    {
        return price.afterDiscount(percentage: percentege)
    }
    
    func getPrice(noOfItems : Int) -> float
    {
        return noOfItems * price
    }
    
}


enum TypeOfFood
{
    case vag
    case nonVeg
}

enum TypeOfQuality : String
{
    case CLASSIC
    case SUPREME
}

extension Float
{
    mutating func afterDiscount(percentage :Float) //-> Float
    {
        self =  (self - (self * percentage)/100)
    }
}
