//
//  ContactUs.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/21/21.
//

import SwiftUI
import MessageUI

struct ContactUsView: View {
    
    // open mail variables
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State var alertNoEmail = false
    // UI variables
    @State var customBlue = Color(red: 82 / 256, green: 130 / 256, blue: 240 / 256, opacity: 1.0)
    
    // contact buttons
    
    func llamar() {
        print("llamar")
    }
    
    var body: some View {
        
        VStack(spacing: 60) {
            VStack(spacing: 30) {
                        Text("¿Cómo podemos ayudar?")
                            .bold()
                            .foregroundColor(customBlue)
                            .font(.custom("Roboto-Bold", size: 30))
                        Text("De parte del equipo de Red Solidaria nos gustaría conocer ccomo ayudarte, puedes dejar aquí cualquier comentario, duda o sugerencia.")
                            .font(.custom("Roboto-Regular", size: 18))
                            
                            .padding(30)
                    }
                    
            HStack(spacing: 100) {
                HStack {
                    
                    Button(action: { llamar() }) {
                        
                        Text("Llamar")
                        Image(systemName: "phone.fill")
                    }
                    
                }
                
                HStack {
                    
                    Button(action: {
                        
                        if !(MFMailComposeViewController.canSendMail()) {
                            self.isShowingMailView.toggle()
                            self.alertNoEmail.toggle()
                            
                        }
                        
                        if self.alertNoEmail == true {
                            print("can't send")
                        }
                        
                    }) {
                        
                        Text("Correo")
                        Image(systemName: "envelope.fill")
                        
                    }.alert(isPresented: $alertNoEmail) {
                        Alert(title: Text("Unable to send email"), message: Text("Please sign in"), dismissButton: .default(Text("Got it!")))
                    }
                    
                    
//                    .onTapGesture {
//
//                        MFMailComposeViewController.canSendMail() ? self.alertNoEmail.toggle() : self.alertNoEmail.toggle()
//                    }
//                    .disabled(!MFMailComposeViewController.canSendMail())
//                    .sheet(isPresented: $isShowingMailView) {
//                        SUBMailView(result: self.$result)
//                    }
                    
                    
                }
                
            }
                

        }
        .offset(y: -150)
        
        
    }
}

struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsView()
    }
}
