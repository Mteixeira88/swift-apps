//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Miguel Teixeira on 24/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import UIKit

// Second screen of the app
class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    // Button next is tapped
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    // All the options button will send to object player the desired league, like that
    // we can have access all around the app

    // Mens next is tapped
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
    }
    
    // Womens next is tapped
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
    }
    
    // Coed next is tapped
    @IBAction func CoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    // Global set function of the player object
    func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isHidden = false
    }
    
    // Sents to the next view in this case SkillVC the player built on this page
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
     }
}
