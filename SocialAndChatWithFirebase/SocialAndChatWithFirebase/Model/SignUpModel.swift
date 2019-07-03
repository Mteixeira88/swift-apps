//
//  SignUpModel.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation
import SwiftUI

struct SignUpModel {
    var userName: String
    var email: String
    var password: String
    
    static let `default` = Self(userName: "", email: "", password: "")
    
    init(userName: String, email: String, password: String) {
        self.userName = userName
        self.email = email
        self.password = password
    }
}
