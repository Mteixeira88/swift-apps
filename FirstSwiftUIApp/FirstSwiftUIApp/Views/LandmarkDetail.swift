/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */


import SwiftUI

struct LandmarkDetail: View {
    // initalizing the landmark detail
    var landmark: Landmark
    
    var body: some View {
        // Vertical stack
        VStack {
            //MapView Controller for the mapp
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            //Circle image Controller for the image frame
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            //Vertical stacking
            VStack(alignment: .leading) {
                //Label
                Text(landmark.name)
                    .font(.title)
                    // Horizontal stacking
                    HStack(alignment: .top) {
                        //Label
                        Text(landmark.park)
                            .font(.subheadline)
                        //white space to fill all the space
                        Spacer()
                        //Label
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                }
                .padding()
            
            //white space to fill all the space
            Spacer()
        }
            
        //name for this navigation
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
