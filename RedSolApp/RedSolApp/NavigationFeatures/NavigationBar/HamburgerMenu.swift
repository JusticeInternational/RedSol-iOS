//
//  ProfileMenuView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/15/21.
//

import SwiftUI

struct HamburgerMenu: View {
    
    // Navigation View button variables
    @State var isProfileViewActive = false
    @State var isConfigurationViewActive = false
    @State var isContactUsViewActive = false
    @State var isSuggestResourcesViewActive = false
    @State var isLoginViewActive = false
    
    // profile view variables
    var firstName: String = "Nombre"
    var lastName: String = "Apellido"
    var email: String = "correo@correo.com"
    var customBlue: Color = Color(red: 82 / 255, green: 130 / 255, blue: 240 / 255)
    
    
    // side menu button functions
    func myProfile() {
        isProfileViewActive.toggle()
    }
    
    func configuration() {
        isConfigurationViewActive.toggle()
        print("configuration")
    }
    
    func contactUs() {
        isContactUsViewActive.toggle()
        print("contact us")
    }
    
    func suggestResources() {
        isSuggestResourcesViewActive.toggle()
        print("suggest resources")
    }
    
    func login() {
        isLoginViewActive.toggle()
        print("login")
    }
    
    
    var body: some View {
        
//        NavigationView {
            VStack(alignment: .leading) {
                
    //            HStack {
    //                Image(systemName: "person.fill")
    //                    .foregroundColor(customBlue)
    //                    .imageScale(.large)
    //                Text("Mi perfil")
    //                    .foregroundColor(.gray)
    //                    .font(.headline)
    //            }
    //            .padding(.top, 100)
                HStack {
                    
                    Button(action: { myProfile() } ) {
                        Image(systemName: "person.fill")
                            .foregroundColor(customBlue)
                            .imageScale(.large)
                        Text("My Profil")
                            .foregroundColor(.gray)
                            .font(.headline)
                        
                        
                    
                    }
                    NavigationLink(destination: ProfileView(), isActive: $isProfileViewActive) {
                        EmptyView()
                    }

                }
                .padding(.top, 100)
                
                
                HStack {
                    
                    Button(action: { configuration() }) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(customBlue)
                            .imageScale(.large)
                        Text("Configuración")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                    
                    NavigationLink(destination: ConfigurationView(), isActive: $isConfigurationViewActive) {
                        EmptyView()
                    }
                }
                .padding(.top, 30)

                
                HStack {
                    
                    Button(action: { contactUs() } ) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(customBlue)
                            .imageScale(.large)
                        Text("Contáctanos")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                    
                    NavigationLink(destination: ContactUsView(), isActive: $isContactUsViewActive) {
                        EmptyView()
                    }
                }
                .padding(.top, 30)
                
                
                HStack {
                    
                    Button(action: { suggestResources() }) {
                        Image(systemName: "flag.fill")
                            .foregroundColor(customBlue)
                            .imageScale(.large)
                        Text("Sugerir Recursos")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                    
                    NavigationLink(destination: SuggestResourcesView(), isActive: $isSuggestResourcesViewActive) {
                        EmptyView()
                    }
                }
                .padding(.top, 30)
                
                Button(action: { login() }) {
                    HStack {
                        Image(systemName: "arrow.right.square.fill")
                            .foregroundColor(customBlue)
                            .imageScale(.large)
                        Text("Iniciar Sesión")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                    
                    NavigationLink(destination: LoginView(), isActive: $isLoginViewActive) {
                        EmptyView()
                    }
                }
                
                .offset(y: 500)

                    
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .edgesIgnoringSafeArea(.all)
            
//        }
        .navigationViewStyle((StackNavigationViewStyle()))

        
    }
    
}

struct HamburgerMenu_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenu()
    }
}
