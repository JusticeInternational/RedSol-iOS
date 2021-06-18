//
//  ProfileMenuView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/15/21.
//

import SwiftUI

struct ProfileViewMenu: View {
    
    var firstName: String = "Nombre"
    var lastName: String = "Apellido"
    var email: String = "correo@correo.com"
    var blueColor: Color = Color(red: 82 / 255, green: 130 / 255, blue: 240 / 255)
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: 200)
                .foregroundColor(blueColor)
            
            VStack(alignment: .center) {
                
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 150))
                    .foregroundColor(.black)        // change to white later
                
                Text(firstName + " " + lastName).bold()
                Text(email)
            }
            

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
