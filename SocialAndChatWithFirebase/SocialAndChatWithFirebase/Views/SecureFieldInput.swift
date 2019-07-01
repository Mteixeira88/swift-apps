//
//  SecureFieldInput.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct SecureFieldInput : View {
    @Binding var passwordBinding: String
    var placeholder: String
    var body: some View {
        SecureField($passwordBinding, placeholder: Text(placeholder))
            .padding(20)
            .cornerRadius(5)
            .overlay(Rectangle().stroke(Color(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1.0), lineWidth: 0))
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
    }
}
