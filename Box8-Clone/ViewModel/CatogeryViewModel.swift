//
//  CatogeryViewModel.swift
//  Box8-Clone
//
//  Created by Amit on 21/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import Foundation


class CatogeryViewModel
{
    var images = ["0","1","2","3","4","5","6","7","8","9","10","11"]
    var isHamburgerShown = false
    var timeIntervalForTimer : Double = 4.0
    private let dataSet = [Model(index: 1, isBig: true), Model(index: 2, isBig: false), Model(index: 3, isBig: false),
                           Model(index: 4, isBig: true), Model(index: 5, isBig: true), Model(index: 6, isBig: false),
                           Model(index: 7, isBig: false), Model(index: 8, isBig: false), Model(index: 9, isBig: true),
                           Model(index: 10, isBig: true), Model(index: 11, isBig: false), Model(index: 12, isBig: false)]
    
    init(){
        
    }
}

extension CatogeryViewModel
{
    public func invertMenuDisplayState()
    {
        self.isHamburgerShown = !self.isHamburgerShown
    }
    public func getMenuDisplayState() -> Bool
    {
        return isHamburgerShown
    }
    
    public func getDataSet() -> [Model]
    {
        return dataSet
    }
    
}


struct Model {
    var index: Int
    var isBig: Bool
}
