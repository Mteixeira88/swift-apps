//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

// Model for the cells in the table
class CategoryCell: UITableViewCell {
    
    // Created by hand and then connected on the Main.storyboard
    // To connect, right-click on the TableCell and check if this variables are there
    // Connect by dragging and left clicking the variable to the part of the cell it corresponds
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
