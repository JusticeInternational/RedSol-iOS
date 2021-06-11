//
//  RegisterScreen.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct RegisterScreen: View {
    var body: some View {
            
        ZStack {
            RoundedRectangle(cornerRadius: 10).foregroundColor(.blue).ignoresSafeArea(.container, edges: .top).offset(y: -300)
            VStack {
                Image("RedSolidariaLogo")
                Text("Bienvenido a RedSol")
                .font(.system(.largeTitle)).fontWeight(.medium).foregroundColor(.white)
                
                padding(50)
                SUBRegisterForm()

            }
            
        }
            
            
            
            
                
        
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
