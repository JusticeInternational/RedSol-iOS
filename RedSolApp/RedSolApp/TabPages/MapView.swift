//
//  Map.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/12/21.
//
import SwiftUI

struct MapView: View {
    
    @State var isSearching: Bool = false
    @State var searchInput: String = ""
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                SearchBar(searchInput: $searchInput, isSearching: $isSearching)
                        
                if isSearching == true {
                    MapViewOrganizations(isSearching: isSearching, searchInput: searchInput)
                }
                else {
                    
                    MapViewMapDisplay()
                }
            }.toolbar {
                if isSearching {
                    Button("Cancel") {
                        searchInput = ""
                        withAnimation {
                            isSearching = false
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
        MapView(isSearching: false, searchInput: "")
    }
}
