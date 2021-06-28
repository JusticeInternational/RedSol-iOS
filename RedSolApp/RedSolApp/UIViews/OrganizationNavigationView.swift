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
            TabView {

                NavigationBar(currentMenu: _myResources)
                .tabItem {
                    Image(systemName: "house.fill")         // NOTE/TODO: modify for organizations logo?
                    Text("Mis Recursos")
                }

                NavigationBar(currentMenu: _mapView)
                    .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Mapa")

                }
            }
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
