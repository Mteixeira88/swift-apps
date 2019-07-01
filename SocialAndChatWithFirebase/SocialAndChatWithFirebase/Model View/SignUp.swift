//
//  SignUp.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 30/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct SignUp : View {
	@State var userSignUp =  SignUpModel.default
	@State var profile = SignUpModel.default

    var body: some View {
		VStack(alignment: .leading) {
            TitleLabel(label: "Sign Up")
            Spacer()
            VStack (spacing: 20){
				TextFieldInput(bindingValue: $userSignUp.userName, placeholder: "Full Name")
				TextFieldInput(bindingValue: $userSignUp.email, placeholder: "Emaill Address")
				SecureFieldInput(passwordBinding: $userSignUp.password, placeholder: "Your Password")
				Spacer()
				HStack {
					Button(action: {
						SignUpService.createAccount(userModel: self.userSignUp)
					}) {
						Text("Sign up")
							.accentColor(.white)
						}
						.frame(minWidth: 0, maxWidth: .infinity)
						.padding(20)
						.background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255), cornerRadius: 5.0)
				}
				HStack {
					Text("Already have an account?")
					NavigationButton(destination: SignIn()) {
						Text("Sign In")
					}
				}
				Spacer()
			}
            Spacer()
        }
        .padding(24)
    }
}

#if DEBUG
struct SignUp_Previews : PreviewProvider {
    static var previews: some View {
		SignUp()
    }
}
#endif
