//
//  TitleLabel.swift
//  BetterRest
//
//  Created by Miguel Teixeira on 05/08/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

class TitleLabel: UILabel {
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    
    func customizeView() {
//        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont.preferredFont(forTextStyle: .headline)
        numberOfLines = 0
        text = "What's the minimum amount of sleep you need?"
    }
    
}
