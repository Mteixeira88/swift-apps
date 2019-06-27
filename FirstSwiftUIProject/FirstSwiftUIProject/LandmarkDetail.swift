//
//  ContentView.swift
//  FirstSwiftUIProject
//
//  Created by Miguel Teixeira on 27/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                }
                .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
