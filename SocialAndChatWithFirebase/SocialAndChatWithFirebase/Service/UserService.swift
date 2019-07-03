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
import FirebaseStorage
import ProgressHUD
import UIKit

class UserService {
    class func createAccount(userModel: SignUpModel, imageData: Data?, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        Auth.auth().createUser(withEmail: userModel.email, password: userModel.password) {
            (authDataResult, error) in
            if error != nil {
                onError(error!.localizedDescription)
                return
            }
            if let authData = authDataResult {
                var userDict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email!,
                    "userName": userModel.userName,
                    "profileImageURL": "",
                    "status": "Welcome to this app"
                ]
                let storageRef = Storage.storage().reference(forURL: "gs://chatapp-c2ac4.appspot.com")
                let storageProfileRef = storageRef.child("profile").child(authData.user.uid)
                let metadata = StorageMetadata()
                metadata.contentType = "image/jpg"
                storageProfileRef.putData(imageData!, metadata: metadata, completion: {
                    (StorageMetadata, error) in
                    if error == nil {
                        storageProfileRef.downloadURL(completion: {(url, error) in
                            if let metaImageURL = url?.absoluteString {
                                userDict["profileImageURL"] = metaImageURL
                            Database.database().reference().child("users").child(authData.user.uid).updateChildValues(userDict, withCompletionBlock: {
                                    (error, ref) in
                                    if error == nil {
                                        onSuccess()
                                    } else {
                                        onError("Something went wront. Please try again.")
                                    }
                                })
                            } else {
                                onError("Image not uploaded")
                            }
                        })
                        
                    } else {
                        onError("Image not uploaded")
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
