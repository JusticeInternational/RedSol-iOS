//
//  MapViewMapDisplay.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/20/21.
//
import MapKit
import SwiftUI

struct MapViewMapDisplay: View {
    
//    @StateObject var globalSearching = GlobalSearching()
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50007773, longitude:  -0.1246402) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
        }
        
        // code for 2nd button
        
        // Cerca de mi
//        ZStack {
//            RoundedRectangle(cornerRadius: 60)
//            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
//            RoundedRectangle(cornerRadius: 60)
//            .strokeBorder(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)), lineWidth: 1)
//
//            HStack {
//                Image(systemName: "mappin.and.ellipse")
//
//                Text("Cerca de mi")
//                    .font(.system(size: 16))
//                    .foregroundColor(Color(#colorLiteral(red: 0.76, green: 0.76, blue: 0.76, alpha: 1)))
//
//            }
////                .padding(.horizontal, 25.0)
//            .frame(width: 291, height: 40)
//        }
//        .frame(width: 291, height: 40)


    //Map

        
    }

}
    


struct MapViewMapDisplay_Previews: PreviewProvider {
    static var previews: some View {
        MapViewMapDisplay()
    }
}
