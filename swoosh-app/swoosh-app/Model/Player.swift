//
//  Player.swift
//  swoosh-app
//
//  Created by Miguel Teixeira on 24/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

// using struct will make the app much as faster then using a class
// struct is used when we want to pass throughout the code and data is simple like Strings
// struct is destroyed once is not used
struct Player {
    var desiredLeague: String! // forcing optional unwrapping
    var selectedSkillLevel: String! // forcing optional unwrapping
}
