//
//  ForgotPassword.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI
import ProgressHUD

struct ForgotPasswordView : View {
    @Binding var dismissForgetPassword: Bool
    @State private var email: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                Button(action: {
                    self.dismissForgetPassword.toggle()
                }) {
                    Text("X")
                        .accentColor(.black)
                }
                Spacer()
                TitleLabel(label: "Forgot Password")
                Spacer()
            }
            VStack (spacing: 20){
                TextFieldInput(bindingValue: $email, placeholder: "Emaill Address")
                HStack {
                    Button(action: {
                        ProgressHUD.show()
                        UserService.resetPassword(email: self.email,
                        onSuccess: {
                            ProgressHUD.showSuccess("An email was sent to reset your password. Check your inbox")
                            self.email = ""
                            self.dismissForgetPassword.toggle()
                        }) { (errorMessage) in
                            ProgressHUD.showError(errorMessage)
                        }
                    }) {
                        Text("Reset Password")
                            .accentColor(.white)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(20)
                        .background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255), cornerRadius: 5.0)
                }
                Spacer()
            }
            Spacer()
            }
            .padding(24)
    }
}
