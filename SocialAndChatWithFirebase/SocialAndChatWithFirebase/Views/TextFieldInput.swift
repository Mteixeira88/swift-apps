//
//  TextFieldInput.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 30/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct TextFieldInput : View {
    @State var name: String = ""
    
    var labelText: String
    var body: some View {
        TextField($name, placeholder: Text(labelText))
            .padding(20)
            .cornerRadius(5)
            .overlay(Rectangle().stroke(Color(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1.0), lineWidth: 1))
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
    }
}

#if DEBUG
struct TextFieldInput_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldInput(labelText: "Testing")
    }
}
#endif
