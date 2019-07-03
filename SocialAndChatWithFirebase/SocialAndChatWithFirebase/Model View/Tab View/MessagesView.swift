//
//  MessagesView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 03/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct MessagesView : View {
    @Binding var moveToTab: Double
    
    var body: some View {
        VStack {
            Text("Hello First View")
            Spacer()
            FooterTabView(moveToTab: $moveToTab)
        }
    }
}
