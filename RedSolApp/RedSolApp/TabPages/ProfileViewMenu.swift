//
//  ProfileMenuView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/15/21.
//

import SwiftUI

struct ProfileViewMenu: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World!")
        }
        .offset(x: 10, y: -300)
        .frame(maxWidth: .infinity, alignment: .leading)
//        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    
    }
    
}

struct ProfileViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewMenu()
    }
}
