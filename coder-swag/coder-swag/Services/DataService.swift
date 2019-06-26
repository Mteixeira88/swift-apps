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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$28", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$38", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Graphic Snapback", price: "$48", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$18", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$28", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie White", price: "$38", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$28", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Grey", price: "$58", imageName: "shirt02.png"),
        Product(title: "Hustle Delegate", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt04.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
