//
//  BorderButton.swift
//  swoosh-app
//
//  Created by Miguel Teixeira on 24/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
