//
//  FooterTabView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 03/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct FooterTabView : View {
    @Binding var moveToTab: Double
    
    var body: some View {
        HStack {
            Button(action: {
                self.moveToTab = Double(0)
            })
            {
                VStack {
                    Image("icon_messages")
                    .resizable()
                        .frame(width: 30, height: 30)
                    Text("Messages")
                }
            }
            .foregroundColor(moveToTab == 0 ? Color(red: 0/255.0, green: 0/255.0, blue: 225/255.0) : Color(red: 100/255.0, green: 100/255.0, blue: 100/255.0))
            Spacer()
            Button(action: {
                self.moveToTab = Double(1)
            })
            {
                VStack {
                    Image("icon_users")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Users")
                }
            }
            .foregroundColor(moveToTab == 1 ? Color(red: 0/255.0, green: 0/255.0, blue: 225/255.0) : Color(red: 100/255.0, green: 100/255.0, blue: 100/255.0))
            Spacer()
            Button(action: {
                self.moveToTab = Double(2)
            })
            {
                VStack {
                    Image("icon_profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Profile")
                }
            }
            .foregroundColor(moveToTab == 2 ? Color(red: 0/255.0, green: 0/255.0, blue: 225/255.0) : Color(red: 100/255.0, green: 100/255.0, blue: 100/255.0))
        }
        .padding(16)
        .background(Color(red: 255/255.0, green: 255/255.0, blue: 255/255.0))
        .shadow(radius: 5)
    }
}
