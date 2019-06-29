//
//  titleLabel.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 29/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct titleLabel : View {
    var label: String?

    var body: some View {
        VStack {
            Text(label!)
                .font(.custom("Didot", size: 28))
        }
        
    }
}

#if DEBUG
struct titleLabel_Previews : PreviewProvider {
    static var previews: some View {
        titleLabel(label: "Create a new account")
    }
}
#endif
