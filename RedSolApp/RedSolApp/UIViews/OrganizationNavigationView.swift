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
        VStack {
            NavigationBar(showMenu: $showMenu, currentMenu: $currentMenu)
            VStack {
                TabView {
        //            Text("Home Tab")
        //                .font(.system(size: 30, weight: .bold, design: .rounded))
                    NavigationView {
                        MyResourcesPageView()
                    }
                        .tabItem {
                            Image(systemName: "house.fill")         // NOTE/TODO: modify for organizations logo?
                            Text("Mis Recursos")
                        }
                    MapView()
        //            Text("Map Tab")
        //                .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Mapa")
                           

                    }
                    
        //                HomeView()
        //                .tabItem {
        //                    Image(systemName: "magnifyingglass")
        //                    Text("Buscar")
        //                }
                    
        //                MainOrganizationView()
        ////            Text("Video Tab")
        ////                .font(.system(size: 30, weight: .bold, design: .rounded))
        //                .tabItem {
        //                    Image(systemName: "sun.max")
        //                    Text("Redsol")
        //                }
                 
        //                ProfileViewNavigation()
        //                .tabItem {
        //                    Image(systemName: "person.crop.circle")
        //                    Text("Perfil")
        //                }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)

            }
                
        }
        
        
    }
    
}

struct OrganizationNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationNavigationView()
    }
}
