//
//  category.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String // making sure the data is initialized
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
