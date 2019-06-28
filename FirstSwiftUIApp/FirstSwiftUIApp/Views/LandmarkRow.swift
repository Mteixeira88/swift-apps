//
//  LandmarkRow.swift
//  FirstSwiftUIApp
//
//  Created by Miguel Teixeira on 28/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    // Landmark row accepts and variable of type landmark
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        // Teting in preview phone
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
