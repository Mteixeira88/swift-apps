//
//  LandmarkList.swift
//  FirstSwiftUIApp
//
//  Created by Miguel Teixeira on 28/06/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        //Navigation view to be able to navigate between view controllers
        NavigationView {
            // Listing elementsue
            // Get all values of landmarkData (Data Model) from JSON
            List(landmarkData) { landmark in
                // View for each row
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
