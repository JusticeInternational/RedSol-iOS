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
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
                .ignoresSafeArea(.all, edges: .top)
                .frame(width: 415)

                .offset(y: -300)
            VStack {
                Image("RedSolidariaLogo")
                VStack(spacing: 50) {
                    Text("Bienvenido a RedSol")
                    .font(.system(.largeTitle)).fontWeight(.medium).foregroundColor(.white)
                    
                    
                    SUBRegisterForm()
                }
                

            }
            
        }.offset(y: 30)
            
            
            
            
                
        
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
