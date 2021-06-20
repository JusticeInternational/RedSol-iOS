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
    
    var body: some View {
        List {
            ForEach(organizations, id: \.self) { organization in
                Text(organization)
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("My Organizations")
    }
}

struct MapViewOrganizations_Previews: PreviewProvider {
    static var previews: some View {
        MapViewOrganizations()
    }
}
