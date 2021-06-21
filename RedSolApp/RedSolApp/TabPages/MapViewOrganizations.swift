//
//  MapViewOrganizations.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/19/21.
//

import SwiftUI

// responsible for organizations list that comes up after selecting the search/near me bar


struct MapViewOrganizations: View {
    
    @S
    
    let organizations = [       // note that this should be replaced with data from GraphQL
        "apple", "banna", "pear"
    ]
    
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    ForEach(organizations.filter({ (organization: String) -> Bool in
                        return organization.hasPrefix(globalSearching.searchInput) || self.globalSearching.searchInput == ""
                     }), id: \.self) { organization in
                         Text(organization)
                     }
                }
                .listStyle(GroupedListStyle())
                
                
                .gesture(DragGesture()
                    .onChanged({ _ in
                    
                    UIApplication.shared.dismissKeyboard()
                    })
               )
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
        
        
    }
}

struct MapViewOrganizations_Previews: PreviewProvider {
    static var previews: some View {
        MapViewOrganizations()
    }
}

// MARK: - searchbar

struct SearchBar: View {
    
    @Binding var searchInput: String
    @Binding var isSearching: Bool
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $globalSearching.searchInput) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            self.globalSearching.isSearching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        self.globalSearching.isSearching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
            
            
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}
      

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
