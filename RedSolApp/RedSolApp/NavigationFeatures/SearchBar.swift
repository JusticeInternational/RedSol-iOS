//
//  MapViewOrganizations.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/19/21.
//

import SwiftUI

// responsible for organizations list that comes up after selecting the search/near me bar

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
                TextField("Search...", text: $searchInput) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            isSearching = true
                        }
                    }
                }
                onCommit: {
                    withAnimation {
                        isSearching = false
                    }
                }
                .autocapitalization(.none)
                .disableAutocorrection(true)
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
