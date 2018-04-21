//
//  FoodTempData.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

/// This class only used for raw data


import Foundation

struct FoodItemObjects
{
   // var foddcatogries : Catogries
    var fusionItemslist : [FoodItem] = [FoodItem]()
    var curries : [FoodItem] = [FoodItem]()
    var biryani : [FoodItem] = [FoodItem]()
    var wraps : [FoodItem] = [FoodItem]()
    var iceCream : [FoodItem] = [FoodItem]()
    

    init(){
    }
    
    mutating func getFusionBoxitems() -> [FoodItem]
    {
        fusionItemslist.append(FoodItem(name : "Dal Makhni Rice Box", description : "Dal makhnai with salad " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .Fusion))
        fusionItemslist.append(FoodItem(name : "Chole Chawal Box", description : "spicy Chole Chawal Box with salad " , price : 80.0, type : .vag ,quality : .CLASSIC , category : .Fusion))
        fusionItemslist.append(FoodItem(name : "Rajma Chawal Box", description : "Rajma Chawal Box with fried rice " , price : 90.0, type : .vag ,quality : .CLASSIC , category : .Fusion))
        fusionItemslist.append(FoodItem(name : "Grilled Tikki Box", description : " Grilled Tikki Box  " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .Fusion))
        fusionItemslist.append(FoodItem(name : "Dal Makhni Rice Box", description : "Paneer Masala Box with salad " , price : 120.0, type : .vag ,quality : .SUPREME , category : .Fusion))
        return fusionItemslist
    }
    
    mutating func getCurries() -> [FoodItem]
    {
        curries.append(FoodItem(name : "Basmati Rice", description : "Basmati Rice with salad " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .Curries))
        curries.append(FoodItem(name : "Tawa Paratha", description : "description : Tawa Paratha with salad " , price : 80.0, type : .vag ,quality : .CLASSIC , category : .Curries))
        curries.append(FoodItem(name : "Kadhai Paneer", description : "Kadhai Paneer with fried rice " , price : 90.0, type : .vag ,quality : .SUPREME , category : .Curries))
        curries.append(FoodItem(name : "Raita", description : "Raita Box with onions " , price : 40.0, type : .vag ,quality : .CLASSIC , category : .Curries))
        curries.append(FoodItem(name : "Butter Chicken ", description : "Butter Chicken with salad " , price : 150.0, type : .nonVeg ,quality : .SUPREME , category : .Curries))
        return curries
    }
    
    mutating func getBiryaniItems() -> [FoodItem]
    {
        biryani.append(FoodItem(name : "Sahi Panner Biryani", description : "Sahi Panner Biryani with salad " , price : 180.0, type : .vag ,quality : .SUPREME , category : .Biryani))
        biryani.append(FoodItem(name : "Firangi Subz Biryani ", description : "Firangi Subz Biryani Box with salad " , price : 170.0, type : .vag ,quality : .CLASSIC , category : .Biryani))
        biryani.append(FoodItem(name : "Chicken Tikka Biryani", description : "Special Chicken Tikka Biryani  " , price : 225.0, type : .nonVeg ,quality : .SUPREME , category : .Biryani))
        biryani.append(FoodItem(name : "Murg Dum Biryani ", description : " Murg Dum Biryani with onion and salad  " , price : 260 , type : .nonVeg ,quality : .CLASSIC , category : .Biryani))
        return biryani
    }
    
    mutating func getWraps() -> [FoodItem]
    {
        wraps.append(FoodItem(name : "Paneer Wrap", description : "Paneer Wrap  with salad " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .Wraps))
        wraps.append(FoodItem(name : "Chicken Wrap ", description : "Chicken Wrap  Box with salad " , price : 150.0, type : .nonVeg ,quality : .CLASSIC , category : .Wraps))
        wraps.append(FoodItem(name : "Mayo Wrap ", description : "Mayo Wrap with fried rice " , price : 120.0, type : .vag ,quality : .CLASSIC , category : .Wraps))
        wraps.append(FoodItem(name : "Tikki Wrap x", description : " Tikki Wrap Box  " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .Wraps))
        wraps.append(FoodItem(name : "DPatty Wrap ", description : "Patty Wrap Box with salad " , price : 120.0, type : .vag ,quality : .SUPREME , category : .Wraps))
        return wraps
    }
    
    mutating func getIceCreamItems() -> [FoodItem]
    {
        iceCream.append(FoodItem(name : "Tender CocoNut ", description : "Tender CocoNut  " , price : 80.0, type : .vag ,quality : .CLASSIC , category : .IceCreams))
        iceCream.append(FoodItem(name : "Sheer Khurma ", description : "Sheer Khurma " , price : 100.0, type : .vag ,quality : .CLASSIC , category : .IceCreams))
        return iceCream
    }
}
