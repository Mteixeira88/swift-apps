        //
        //  ViewController.swift
        //  swoosh-app
        //
        //  Created by Miguel Teixeira on 24/06/2019.
        //  Copyright © 2019 Miguel Teixeira. All rights reserved.
        //

        import UIKit

        // This is the main controller for the main view
        // VC -> View Controller
        class WelcomeVC: UIViewController {

            @IBOutlet weak var swoosh: UIImageView!
            @IBOutlet weak var bgImg: UIImageView!
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                // view.frame.size.width -> entire width of the frame
                // view.frame.size.height -> entire height of the frame
                //programtically framing
                //swoosh.frame = CGRect(x: (view.frame.size.width / 2) - (swoosh.frame.size.width / 2), y: 50 , width: swoosh.frame.size.width, height: swoosh.frame.size.height)
                //bgImg.frame = view.frame
            }
            
            // Go back to the previous screen
            @IBAction func unwindFromSkillVc(unwindSegue: UIStoryboardSegue) {
                
            }


        }
