//
//  ProductCell.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 26/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var _productImage: UIImageView!
    @IBOutlet weak var _productLabel: UILabel!
    @IBOutlet weak var _productPrice: UILabel!
    
    func updateViews(product: Product) {
        _productImage.image = UIImage(named: product.imageName)
        _productLabel.text = product.title
        _productPrice.text = product.price
    }
}
