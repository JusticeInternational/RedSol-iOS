//
//  TabView.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/5/21.
//

import SwiftUI

struct TabView2: View {
    
    var body: some View {
        TabView {
//            Text("Home Tab")
//                .font(.system(size: 30, weight: .bold, design: .rounded))
            NavigationView {
                paghome()

                      }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Map1()
//            Text("Map Tab")
//                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "map")
                    Text("Mapa")
                   

                }
            
            home()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
            
            Redsol()
//            Text("Video Tab")
//                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "sun.max")
                    Text("Redsol")
                }
         
            Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Perfil")
                }
        }
    }
}

struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}