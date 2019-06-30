//
//  ButtonWithImage.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 29/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct ButtonWithImage : View {
    var buttonText: String
    var buttonImage: String
    var body: some View {
    HStack(alignment: .center) {
        Spacer()
        Image(buttonImage)
            .offset(x: -10, y: 0)
        Text(buttonText)
        Spacer()
        }
        .padding(20)
        .cornerRadius(20)
        .accentColor(.white)
    }
}

#if DEBUG
struct ButtonWithImage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonWithImage(buttonText: "Create a new account", buttonImage: "icon-chat")
    }
}
#endif
