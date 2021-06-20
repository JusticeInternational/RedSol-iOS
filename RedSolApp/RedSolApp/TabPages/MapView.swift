//
//  Map.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/12/21.
//
import MapKit
import SwiftUI

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50007773, longitude: -0.1246402) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                //Buscar
                

            
                    
    //                RoundedRectangle(cornerRadius: 60)
    //                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //
    //                RoundedRectangle(cornerRadius: 60)
    //                .strokeBorder(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)), lineWidth: 1)
    //
    //                HStack {
    //                    Text("Buscar")
    //                        .font(.system(size: 16))
    //                        .foregroundColor(Color(#colorLiteral(red: 0.76, green: 0.76, blue: 0.76, alpha: 1)))
    //                    Spacer()
    //                    Image(systemName: "magnifyingglass")
    //                }
    //                .padding(.horizontal, 25.0)

            
            
            // Cerca de mi
                ZStack {
                    RoundedRectangle(cornerRadius: 60)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    RoundedRectangle(cornerRadius: 60)
                    .strokeBorder(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)), lineWidth: 1)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text("Cerca de mi")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.76, green: 0.76, blue: 0.76, alpha: 1)))
                          
                    }
    //                .padding(.horizontal, 25.0)
                    .frame(width: 291, height: 40)
                }
                .frame(width: 291, height: 40)

                
            //Map
        
                Map(coordinateRegion: $region)
                          .edgesIgnoringSafeArea(.all)
            }
        
        }
    }
        
}

struct SearchBar: View {
    
    @Binding var searchInput: String
    @Binding var searching: Bool
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text:$searchInput)
            }.foregroundColor(.gray)
            .padding(.leading, 13)
            
            
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}
      

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
