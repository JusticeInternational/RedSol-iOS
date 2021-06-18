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
        
        VStack {
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .frame(width: .infinity, height: 400)
                    .foregroundColor(blueColor)
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: -50)     // to cover left edge
                
                VStack(alignment: .center) {
                    
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 120))
                        .foregroundColor(.white)
                    
                    Text(firstName + " " + lastName).bold()
                        .font(.custom("Roboto-Bold", size: 25))
                        .foregroundColor(.white)
                    Text(email)
                        .font(.custom("Roboto-Regular", size: 18))
                        .foregroundColor(.white)

                }
                

            }
            .padding(25)

            .offset(x: 10, y: -300)
            .frame(maxWidth: .infinity, alignment: .leading)
    //        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
        }
        .offset(y: 100)
        
    
    }
    
}

struct ProfileViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewMenu()
    }
}
