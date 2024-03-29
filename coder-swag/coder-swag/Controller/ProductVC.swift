//
//  ProductVC.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 26/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var productsCollection: UICollectionView!

    private (set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }

}
