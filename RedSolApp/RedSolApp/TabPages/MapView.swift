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
                SearchBar()
                        
                if self.globalSearching.isSearching == true {
                    MapViewOrganizations()
                }
                else {
                    
                    MapViewMapDisplay()
                }
            }.toolbar {
                if self.globalSearching.isSearching {
                    Button("Cancel") {
                        self.globalSearching.searchInput = ""
                        withAnimation {
                            self.globalSearching.isSearching = false
                            UIApplication.shared.dismissKeyboard()
                        }
                    }
                }
            }
        }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
        
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
