//
//  SignUp.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 30/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI
import ProgressHUD
import UIKit

struct SignUpView : View {
	@State var userSignUp =  SignUpModel.default
	@State var isSuccess =  false
	@State var isShown: Bool = false
	@State var image: UIImage?
	@Binding var signInSuccess: Bool
	
	var body: some View {
		VStack(alignment: .leading) {
			TitleLabel(label: "Sign Up")
			Spacer()
			VStack (spacing: 20){
				HStack {
					Spacer()
					Button(action: {
						self.isShown.toggle()
					})
					{
						if image != nil {
							Image(uiImage: image!).renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
								.resizable().frame(width: 70, height: 70)
								.cornerRadius(35)
								.shadow(radius: 10)
						} else {
							Image("upload").resizable().frame(width: 150, height: 150)
						}
						}
						.presentation(!isShown ? nil : Modal(ImagePicker(isShown: $isShown, image: $image)))
					Spacer()
					}
					.offset(y: -20)
				TextFieldInput(bindingValue: $userSignUp.userName, placeholder: "Full Name")
				TextFieldInput(bindingValue: $userSignUp.email, placeholder: "Emaill Address")
				SecureFieldInput(passwordBinding: $userSignUp.password, placeholder: "Your Password")
				Spacer()
				HStack {
					Button(action: {
						ProgressHUD.show()
						guard let imageSelected = self.image else {
							ProgressHUD.showError("Select an image")
							return
						}
						UserService.createAccount(userModel: self.userSignUp, imageData: imageSelected.jpegData(compressionQuality: 0.4),
						onSuccess: {
							ProgressHUD.showSuccess("User created with success")
							self.userSignUp = SignUpModel.default
							self.signInSuccess = true
						}) { (errorMessage) in
							ProgressHUD.showError(errorMessage)
						}
					}) {
						Text("Sign up")
							.accentColor(.white)
						}
						.frame(minWidth: 0, maxWidth: .infinity)
						.padding(20)
						.background(Color(red: 0 / 255, green: 0 / 255, blue: 0 / 255), cornerRadius: 5.0)
				}
				HStack{
					Text("Already have an account?")
					NavigationButton(destination: SignInView(signInSuccess: $signInSuccess)) {
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


//#if DEBUG
//struct SignUp_Previews : PreviewProvider {
//	static var previews: some View {
//		SignUpView()
//	}
//}
//#endif
