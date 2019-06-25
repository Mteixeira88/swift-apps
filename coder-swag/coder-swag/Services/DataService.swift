//
//  DataService.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

class DataService {
    // static means that you can only create ONE DataService in memory
    // using this singleton like this it will initialize with app and dye with the app
    static let instance = DataService()
    
    // This would be the information from the server
    private let categories = [
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png"),
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
