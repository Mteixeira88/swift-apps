/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */


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
