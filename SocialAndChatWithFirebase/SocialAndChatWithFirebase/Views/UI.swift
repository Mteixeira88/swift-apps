//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

// This is the VIEW for the text fields
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    // customizing the Text Field Input
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2529159331)
        clipsToBounds = true
        layer.cornerRadius = 5.0
        textAlignment = .center
        if placeholder == nil {
            placeholder = " "
        }
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
    
}
