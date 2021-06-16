//
//  NavigationProfileView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/15/21.
//

import SwiftUI

struct NavigationProfileView: View {
    
    @State var showMenu = false
    
    var body: some View {
        GeometryReader { geometry in
            ProfileView(showMenu: self.$showMenu)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
            if self.showMenu {
                ProfileView()
                    .frame(width: geometry.size.width / 2)
            }
        }
    }
}

struct NavigationProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationProfileView()
    }
}
