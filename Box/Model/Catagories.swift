//
//  Catagories.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import Foundation

struct Catogries
{
    var type : [TypeOfCatogries] = [TypeOfCatogries]()
    var name : [String] = [String]()
}

enum TypeOfCatogries : Int
{
    case Fusion = 0 ,Curries,Biryani,Wraps,IceCreams
}
