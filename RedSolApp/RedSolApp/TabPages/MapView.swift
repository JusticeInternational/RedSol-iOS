//
//  Map.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/12/21.
//
import SwiftUI

struct MapView: View {
    
    @StateObject var globalSearching = GlobalSearching()
    
    var body: some View {
        NavigationView {
            
            VStack {
                SearchBar(searchInput: $globalSearching.searchInput, searching: $globalSearching.searching)
                        
                if self.globalSearching.searching == true {
                    MapViewOrganizations()
                }
                else {
                    
                    MapViewMapDisplay()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
    }
        
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
