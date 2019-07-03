//
//  SignIn.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI
import ProgressHUD

struct SignInView : View {
    @State var userSignIn =  SignInModel.default
    @State var dismissForgetPassword = false
    @Binding var signInSuccess: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleLabel(label: "Sign In")
            Spacer()
            VStack (spacing: 20){
                TextFieldInput(bindingValue: $userSignIn.email, placeholder: "Emaill Address")
                SecureFieldInput(passwordBinding: $userSignIn.password, placeholder: "Your Password")
                Spacer()
                HStack {
                    Button(action: {
                        self.signInSuccess = true
                        return
                        ProgressHUD.show()
                        UserService.signIn(userModel: self.userSignIn,
                        onSuccess: {
                            ProgressHUD.showSuccess("Login Success")
                            self.userSignIn = SignInModel.default
                        }) { (errorMessage) in
                            ProgressHUD.showError(errorMessage)
                        }
                    }) {
                        Text("Sign In")
                            .accentColor(.white)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(20)
                        .background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255), cornerRadius: 5.0)
                }
                Spacer()
            }
            Spacer()
                HStack (alignment: .center) {
                    Button(action: {
                        self.dismissForgetPassword.toggle()
                    })
                    { Text("Forgot Password?")
                        .accentColor(.black)
                    }
                    .presentation(!dismissForgetPassword ? nil : Modal(ForgotPasswordView(dismissForgetPassword: $dismissForgetPassword)))
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .padding(24)
    }
}

//#if DEBUG
//struct SignIn_Previews : PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
//#endif
