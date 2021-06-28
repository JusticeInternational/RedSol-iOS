//
//  TabView.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/5/21.
//

import SwiftUI

struct OrganizationNavigationView: View {
    
    // navigation bar variables
    @State var myResources = "My Resources"
    @State var mapView = "Map View"

    var body: some View {

        ZStack {
//            NavigationBar(showMenu: $showMenu)

            TabView {
//                NavigationView {
                        
//                }
//                OrganizationNavigationView(showMenu: showMenu)
                NavigationBar(currentMenu: _myResources)
//                NavigationBar(showMenu: $showMenu)
                .tabItem {
                    Image(systemName: "house.fill")         // NOTE/TODO: modify for organizations logo?
                    Text("Mis Recursos")
                }
//                    .onAppear(perform: {
//                    currentMenu = "My Resources"
//                })
                NavigationBar(currentMenu: _mapView)
                    .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Mapa")

                }
            }
            .padding(.top, 60)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
    
}

struct OrganizationNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationNavigationView()
    }
}
