    //
    //  ViewController.swift
    //  xyz
    //
    //  Created by Miguel Teixeira on 26/06/2019.
    //  Copyright © 2019 Miguel Teixeira. All rights reserved.
    //

    import UIKit
    import CoreMotion

    class ViewController: UIViewController {

        @IBOutlet weak var xLabel: UILabel!
        @IBOutlet weak var yLabel: UILabel!
        @IBOutlet weak var zLabel: UILabel!
        
        var motionManager: CMMotionManager!
        
        // CoreMotion https://developer.apple.com/documentation/coremotion
        // CMMotionManager https://developer.apple.com/documentation/coremotion/cmmotionmanager
        
        override func viewDidLoad() {
            super.viewDidLoad()
            motionManager = CMMotionManager()
            motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        }
        
        func updateLabels(data: CMAccelerometerData?, error: Error?) {
            guard let accelerometerData = data else { return }
            print(accelerometerData)
        }
        
    }

