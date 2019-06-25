//
//  CategoryVC.swift
//  coder-swag
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//


// Begin by clicking the CategoryVC on main.storyboard and go to Editor->Embed in->Navigation controller

// Using TableViewController is a bad decision because it is very limited on what it can do

import UIKit

class CategoryVC: UIViewController {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

