//
//  paghome.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/8/21.
//

import SwiftUI


struct MyResourcesPageView: View {
//    @StateObject var organizaciones = Organizations2(id: UUID(), name: "building 1", image: "building 1", address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")
    
    // local data variables
    
    @StateObject var organizaciones: SampleOrganizations = organizacionez[0]
    
    var body: some View {
        ZStack {            
            ScrollView {
                VStack(spacing: 0) {
                    LazyVGrid(
                        columns: [
                            GridItem(.adaptive(minimum: 200), spacing: 60)
                        ],
                        spacing: 10
                    )
                    {
                    ForEach(organizacionez) { item in
                            VStack {
                                NavigationLink(destination: OrganizationHeader(organizaciones: item)) {
                                    OrganizationCardView(organizaciones: item)

                                        .frame(width: 360, height: 300)
                                }

            //                Text("\(organizaciones.name)")
                            }
             
                        }
                }
                    
                    .padding([.top, .leading, .trailing], 15.0)
                }
            }
            
            
        }
        }
        
    
}
struct MyResourcesPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyResourcesPageView()
    }
}
