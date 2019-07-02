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

class UserService {
    class func createAccount(userModel: SignUpModel, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        Auth.auth().createUser(withEmail: userModel.email, password: userModel.password) {
            (authDataResult, error) in
            if error != nil {
                onError(error!.localizedDescription)
                return
            }
            if let authData = authDataResult {
                let userDict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email!,
                    "userName": userModel.userName,
                    "profileImageURL": "",
                    "status": "Welcome to this app"
                ]
                Database.database().reference().child("users").child(authData.user.uid).updateChildValues(userDict, withCompletionBlock: {
                    (error, ref) in
                    if error == nil {
                        onSuccess()
                    } else {
                        onError("Something went wront. Please try again.")
                    }
                })
            }
        }
    }
    
    class func signIn(userModel: SignInModel, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        Auth.auth().signIn(withEmail: userModel.email, password: userModel.password) {
            (authDataResult, error) in
            if error != nil {
                onError(error!.localizedDescription)
                return
            }
            onSuccess()
        }
    }
    
    class func resetPassword(email: String, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        Auth.auth().sendPasswordReset(withEmail: email) {
            (error) in
            if error != nil {
                onError(error!.localizedDescription)
                return
            }
            onSuccess()
        }
    }
}
