//
//  SignUpModel.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 01/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase
import ProgressHUD

class SignUpService {
    class func createAccount(userModel: SignUpModel) {
        Auth.auth().createUser(withEmail: userModel.email, password: userModel.password) {
            (authDataResult, error) in
            if error != nil {
                ProgressHUD.showError(error!.localizedDescription)
                return
            }
            if let authData = authDataResult {
                let userDict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email!,
                    "userName": userModel.userName,
                    "profileImageURL": "",
                    "status": ""
                ]
                Database.database().reference().child("users").child(authData.user.uid).updateChildValues(userDict, withCompletionBlock: {
                    (error, ref) in
                    if error == nil {
                        ProgressHUD.showSuccess("User created with success")
                    } else {
                        ProgressHUD.showError("Something went wront. Please try again.")
                    }
                })
            }
        }
    }
    
    private func postUser() {
    
    }
}
