//
//  RegisterScreen.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/11/21.
//

import SwiftUI



struct RegisterView: View {
    
    @State var label: UILabel!
//    @Published(\.presentationMode) var presentationMode: Binding<PresentationMode>

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
 

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
