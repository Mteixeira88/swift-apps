//
//  ProfileView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 03/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct ProfileView : View {
    @Binding var moveToTab: Double
    @Binding var signInSuccess: Bool
    
    var body: some View {
        VStack {
            Text("Hello Third View")
            Button(action: {
                self.signInSuccess = false
            }) {
                Text("Logout")
            }
            Spacer()
            FooterTabView(moveToTab: $moveToTab)
        }
    }
}

