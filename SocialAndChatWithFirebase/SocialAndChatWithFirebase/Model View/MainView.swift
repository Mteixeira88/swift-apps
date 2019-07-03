//
//  MainView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 02/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct MainView : View {
    @State var signInSuccess = false
    var body: some View {
        return Group {
            if signInSuccess {
                AppHomeView()
            }
            else {
                CreateAccountView(signInSuccess: $signInSuccess)
            }
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
