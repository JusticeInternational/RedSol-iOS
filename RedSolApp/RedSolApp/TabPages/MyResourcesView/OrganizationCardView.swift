//
//  card1.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/5/21.
//

import SwiftUI

struct OrganizationCardView: View {
    #if os(iOS)
    var cornerRadius: CGFloat = 22
    #else
    var cornerRadius: CGFloat = 10
    #endif
//    @ObservedObject var classesdeOrganizaciones = ClassesdeOrganizaciones()
    
    @StateObject var organizaciones = SampleOrganizations(name: "building 1", image: "building 1", address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(organizaciones.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("\(organizaciones.name)")
//            Text("\(classesdeOrganizaciones.orga.nombredeOrganizacion)")
//            Text($classesdeOrganizaciones.orga.nombredeOrganizacion).fontWeight(.bold).foregroundColor(Color.white)
//            Text($classesdeOrganizaciones.orga.informacion).font(.footnote).foregroundColor(Color.white)
        }
        .padding(.all)
        .border(Color.gray, width: 1)
//        .background(ingre.color)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: Color.gray.opacity(0.3), radius: 20, x: 0, y: 10)
       
    }
}

struct OrganizationCardView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationCardView()
    }
}
