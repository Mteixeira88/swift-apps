//
//  ContentView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 29/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct CreateAccountView : View {
    @State var dismissFlag = false
    @Binding var signInSuccess: Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TitleLabel(label: "Create a new account")
                Spacer()
                VStack(spacing: 40.0) {
                    NavigationButton(destination: Text("1")) {
                        ButtonWithImage(buttonText: "Sign in with Facebook", buttonImage: "icon-facebook")
                        .background(Color(red: 59 / 255, green: 89 / 255, blue: 152 / 255))
                    }
                    Button(action: {
                        print(self.signInSuccess)
                    }) {
                        ButtonWithImage(buttonText: "Sign in with Google", buttonImage: "icon-google")
                        }
                        .background(Color(red: 219 / 255, green: 68 / 255, blue: 55 / 255))
                    
                    Spacer()
                    Text("OR")
                    NavigationButton(destination: SignUpView(signInSuccess: self.$signInSuccess)) {
                        ButtonWithImage(buttonText: "Create a new account", buttonImage: "icon-chat")
                            .background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255))
                    }
                    HStack {
                        Text("Already have an account?")
                        NavigationButton(destination: SignInView(signInSuccess: self.$signInSuccess)) {
                            Text("Sign In")
                        }
                    }
                }
                .padding()
                Spacer()
                Text("Terms of service")
                Spacer()
                }
                .padding(24)
        }
    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    @State var isLoggedIn = false
//    static var previews: some View {
//        CreateAccountView(signInSuccess: self.isLoggedIn)
//    }
//}
//#endif

