//
//  SignUp.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 30/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct SignUp : View {
	@State private var password: String = ""

    var body: some View {
		VStack(alignment: .leading) {
            TitleLabel(label: "Sign Up")
            Spacer()
            VStack (spacing: 20){
				TextFieldInput(labelText: "Full Name")
				TextFieldInput(labelText: "Emaill Address")
				SecureField($password, placeholder: Text("Your Password"))
					.padding(20)
					.cornerRadius(5)
					.overlay(Rectangle().stroke(Color(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1.0), lineWidth: 0))
					.background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
						Text("Confirm")
					}
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
