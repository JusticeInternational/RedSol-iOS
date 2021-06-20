//
//  MapViewOrganizations.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/19/21.
//

import SwiftUI

// responsible for organizations list that comes up after selecting the search/near me bar

struct MapViewOrganizations: View {
    
    let organizations = [       // note that this should be replaced with data from GraphQL
        "1", "2", "3"
    ]
    
    @State var searchInput = ""
    @State var searching = false
    
    var body: some View {
        
        List {
            ForEach(organizations, id: \.self) { organization in
                Text(organization)
            }
        }
        .listStyle(GroupedListStyle())
//        .navigationTitle("My Organizations")
        .toolbar {
            if searching {
                Button("Cancel") {
                    searchInput = ""
                    withAnimation {
                        searching = false
                        UIApplication.shared.dismissKeyboard()
                    }
                }
            }
        }
        .gesture(DragGesture()
            .onChanged({ _ in
            
            UIApplication.shared.dismissKeyboard()
            })
       )
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
    @Binding var searching: Bool
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text:$searchInput)
            }.foregroundColor(.gray)
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
