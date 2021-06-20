//
//  Map.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/12/21.
//
import SwiftUI

struct MapView: View {
    
    @StateObject 
    
    var body: some View {
        MapViewOrganizations()
//            VStack {
                
                //Buscar
                

    }
        
}
                    
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
//                ZStack {
//                    RoundedRectangle(cornerRadius: 60)
//                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
//                    RoundedRectangle(cornerRadius: 60)
//                    .strokeBorder(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)), lineWidth: 1)
//
//                    HStack {
//                        Image(systemName: "mappin.and.ellipse")
//
//                        Text("Cerca de mi")
//                            .font(.system(size: 16))
//                            .foregroundColor(Color(#colorLiteral(red: 0.76, green: 0.76, blue: 0.76, alpha: 1)))
//
//                    }
//    //                .padding(.horizontal, 25.0)
//                    .frame(width: 291, height: 40)
//                }
//                .frame(width: 291, height: 40)
//
//
//            //Map
//
//                Map(coordinateRegion: $region)
//                          .edgesIgnoringSafeArea(.all)
//            }
//
//        }



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
