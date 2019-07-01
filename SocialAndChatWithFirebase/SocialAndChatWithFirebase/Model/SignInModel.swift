//
//  SignInModel.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation

struct SignInModel {
    var email: String
    var password: String
    
    static let `default` = Self(email: "", password: "")
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
