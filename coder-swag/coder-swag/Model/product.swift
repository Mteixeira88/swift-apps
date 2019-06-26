//
//  product.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 26/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

struct Product {
    private (set) public var title: String
    private (set) public var price: String
    private (set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
