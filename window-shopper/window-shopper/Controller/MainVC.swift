//
//  ViewController.swift
//  window-shopper
//
//  Created by Miguel Teixeira on 25/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button fully created programatically
        let calcBtn = UIButton(frame: CGRect(x: 0,  y:0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        // The button is only shown when we click the input
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    // Use @objc when using a selector, otherwise we can have problems when running the app
    @objc func calculate() {
        // Checks if the Text Fields exists
        if let getWageTxt = wageTxt.text, let getPriceTxt = priceTxt.text {
            // Checks if the Text Fields are not empty
            if let wage = Double(getWageTxt), let price = Double(getPriceTxt) {
                // removes the keyboard from the phones
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLbl.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    // clicking the Clear Calculator button
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

