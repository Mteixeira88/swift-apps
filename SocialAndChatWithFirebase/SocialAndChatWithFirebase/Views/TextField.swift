//
//  TextField.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 30/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct TextFieldInput : View {
    var labelText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(labelText)
            TextField(.constant(""))
                .padding(20)
                .cornerRadius(5)
                .overlay(Rectangle().stroke(Color.black, lineWidth: 1))
        }
    }
}

#if DEBUG
struct TextField_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldInput(labelText: "Testing Input")
    }
}
#endif
