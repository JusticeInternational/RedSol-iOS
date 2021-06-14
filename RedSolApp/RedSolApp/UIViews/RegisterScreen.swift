//
//  RegisterScreen.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI

struct RegisterScreen: View {
    
    @State var label: UILabel!
    
    var body: some View {
        
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                    .ignoresSafeArea(.all, edges: .top)
                    .frame(width: 415)

                    .offset(y: -450)
                VStack {
                    Image("RedSolidariaLogo_Vector")
                    VStack(spacing: 50) {
                        
                        
                        
                        Text("Bienvenido a RedSol")
                        .font(.custom("Roboto-Bold", size: 30))
                        .foregroundColor(.white)
                        
                        
                        SUBRegisterForm()
                    }
                    

                }
                
            }
            .offset(y: 40)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
            
            
            
            
                
        
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
