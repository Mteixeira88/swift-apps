//
//  Player.swift
//  swoosh-app
//
//  Created by Miguel Teixeira on 24/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

// using struct will make the app much as faster then using a class
// data structure like struct's should be used always it's possilbe
// struct data is automatically instaciated
// struct data work like global variables, once change it will change in all the platform
struct Player {
    var desiredLeague: String! // forcing optional unwrapping
    var selectedSkillLevel: String! // forcing optional unwrapping
}
