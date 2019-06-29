//
//  ContentView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 29/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        VStack(alignment: .center) {
            titleLabel(label: "Create a new account")
            Spacer()
            VStack(spacing: 40.0) {
                Button(action: {}) {
                    buttonFullWidth(buttonText: "Sign in with Facebook")
                }
                .background(Color(red: 59 / 255, green: 89 / 255, blue: 152 / 255))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    buttonFullWidth(buttonText: "Sign in with Google")
                }
                    .background(Color(red: 219 / 255, green: 68 / 255, blue: 55 / 255))
                Spacer()
                Text("OR")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    buttonFullWidth(buttonText: "Create a new account")
                    .background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255))
                    }
                }
                .padding()
            Spacer()
            Text("Terms of service")
            Spacer()
        }
        .padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct buttonFullWidth : View {
    var buttonText: String?
    var body: some View {
        return HStack(alignment: .center) {
            Spacer()
            Text(buttonText!)
            Spacer()
        }
        .padding(20)
        .cornerRadius(20)
        .accentColor(.white)
    }
}
