//
//  Wage.swift
//  window-shopper
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
