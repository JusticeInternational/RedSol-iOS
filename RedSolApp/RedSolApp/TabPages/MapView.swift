//
//  Map.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/12/21.
//
import SwiftUI
import MapKit

struct MapView: View {
    
    // search bar variables
    @State var isSearching: Bool = false
    @State var searchInput: String = ""
    
    //Map view map display variables
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50007773, longitude:  -0.1246402) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    
    // Map view organizations variables
    let organizations = [       // note that this should be replaced with data from GraphQL
        "Ayuda Humanitaria Venezuela",
        "Asociación Venezolana en Chile",
        "Somos Panas Colombia"
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {

                SearchBar(searchInput: $searchInput, isSearching: $isSearching)

                if isSearching == true {
                    VStack(alignment: .leading) {

                        List {
                            
                            ForEach(organizations.filter({ (organization: String) -> Bool in
                                return organization.localizedCaseInsensitiveContains(searchInput) || searchInput == ""
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
                }
                else {

                    Map(coordinateRegion: $region)
                        .edgesIgnoringSafeArea(.all)
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
