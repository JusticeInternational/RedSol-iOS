//
//  TabView.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/5/21.
//

import SwiftUI

struct OrganizationNavigationView: View {
    
    // navigation bar variables
    @State var showMenu: Bool = false
    @State var currentMenu: String = ""

    var body: some View {

        ZStack {
            NavigationBar(showMenu: $showMenu, currentMenu: $currentMenu)

            TabView {
//                NavigationView {
                        
//                }
                MyResourcesPageView()
                .tabItem {
                    Image(systemName: "house.fill")         // NOTE/TODO: modify for organizations logo?
                    Text("Mis Recursos")
                }.onAppear(perform: {
                    self.currentMenu = "My Resources"
                })
                MapView()
                    .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Mapa")

                }.onAppear(perform: {
                    self.currentMenu = "Map View"
                })
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
