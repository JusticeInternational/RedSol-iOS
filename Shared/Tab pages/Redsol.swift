//
//  Redsol.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/10/21.
//

import SwiftUI
//import EmailView
//import MessageUI
import Foundation

struct Redsol: View {
    
    @State private var emailContent = ""
    @State private var porqueNosContactas = ["No anda el app", "Quiero donar y no se como", "Los datos estan incorrectos", "Otra causa"]
    static let porqueNosContactas = 0
    var body: some View {
        
        VStack {
            ZStack {
                VStack{


                }

                .frame(maxWidth: .infinity, maxHeight: 400)
                .padding()
                .background(Color("organizBlue"))
                .cornerRadius(20.0)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                .ignoresSafeArea(.all)
               
                VStack {
                    Text("Contactanos")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top)
                                                                            
                }
                .frame(width: 300, height: 300, alignment: .top)


            }
            Spacer()

        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
     
        ScrollView {
            
            VStack {
              

                    
                    
                    VStack{
                    VStack{
                        HStack {
                            VStack{
                                HStack{
                                    VStack {
                                        Text("E-mail: redsol@correo.com")
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                                Spacer()
                                    VStack {
                                        Image(systemName: "envelope")
                                            .resizable()
                                            .frame(width: 32, height: 25)
                                    }
                                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                                }
                                .padding(.top, 6.0)
                            }
                            

                        }
                        
                        .padding(.vertical, 12.0)

                        .foregroundColor(Color("organizBlue"))
                        .padding(.horizontal, 20)
                            Divider().frame(height: 0.5).background(Color.gray)
                        
                        
                        HStack {
                            VStack{
                                HStack{
                                    VStack {
                                        Text("Pagina Web: www.redsol.com")
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                                Spacer()
                                    VStack {
                                        Image(systemName: "network")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                                }
                            }
                            

                        }
                        
                        .padding(.vertical, 12.0)

                        .foregroundColor(Color("organizBlue"))
                        .padding(.horizontal, 20)
                            Divider().frame(height: 0.5).background(Color.gray)
                      
                        HStack {
                            VStack{
                                HStack{
                                    VStack {
                                        Text("Telefono: +984651384951")
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                                Spacer()
                                    VStack {
                                        Image(systemName: "phone")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                                }
                            }
                            

                        }
                        
                        .padding(.vertical, 12.0)

                        .foregroundColor(Color("organizBlue"))
                        .padding(.horizontal, 20)
                            Divider().frame(height: 0.5).background(Color.gray)
                        HStack {
                            VStack{
                                HStack{
                                    VStack {
                                        Text("Facebook: RedSolidaria")
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                                Spacer()
                                    VStack {
                                        Image(systemName: "mappin.and.ellipse")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                                }
                            }
                            

                        }
                        
                        .padding(.vertical, 12.0)

                        .foregroundColor(Color("organizBlue"))
                        .padding(.horizontal, 20)
                            Divider().frame(height: 0.5).background(Color.gray)

                        HStack {
                            VStack{
                                HStack{
                                    VStack {
                                        Text("Twitter: @red_sol_app")
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                                Spacer()
                                    VStack {
                                        Image(systemName: "mappin.and.ellipse")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                                }
                            }
                            

                        }
                        
                        .padding(.vertical, 12.0)

                        .foregroundColor(Color("organizBlue"))
                        .padding(.horizontal, 20)
                            Divider().frame(height: 0.5).background(Color.gray)


                    }
                    .frame(width: 320, alignment: .center)
                    
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            //        .foregroundColor(.blue)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
               
                
                VStack{
                    Text("Envianos un Mensaje")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("organizBlue"))
                        .padding(.vertical)
                    
                    
                  
                    VStack{
                        Text("¿Porque nos contactas?")
                            .font(.body)
                            .foregroundColor(Color("organizBlue"))
                            .padding(.top)
                        
                        DropDown()
                        
                        GroupBox {
                            DisclosureGroup("Menu 1") {
                                Text("Item 1")
                                Text("Item 2")
                                Text("Item 3")
                            }
                        }
                                            
                        
                        Picker("Number of the day in the Week", selection: $porqueNosContactas){
                            ForEach(self.porqueNosContactas, id: \.self) {
                                Text($0)
                         }
                      }
                    }
                    
                    VStack {
                        TextField("escriba aqui por favor", text: $emailContent)
                    }
                    .frame(width: 264, height: 200, alignment: .center)
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.black, lineWidth: 0.5)
                )
                    VStack(alignment: .center) {
                        Text("        Enviar        ")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.vertical, 11.0)
                            .padding(.horizontal, 13.0)
                            .background(Color("organizBlue"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(10)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  alignment: .center)

                    Text("¿No encuentras una organizacion que busca? Sugiera una:")
                        .font(.body)
                        .foregroundColor(Color("organizBlue"))
                        .padding(.top)
                        .padding(.bottom, 25.0)

                    
                    VStack(alignment: .center) {
                        Text("      Sugerir      ")
                            .font(.body)
                            .fontWeight(.medium)
    //                        .padding(.vertical, 11.0)
    //                        .padding(.horizontal, 13.0)
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(.blue)
                            .padding(10)
                    }
    //                .frame(minWidth: 0, maxWidth: 140, minHeight: 0,  alignment: .center)
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.blue, lineWidth: 3)
                        )
                    .padding(.bottom, 150.0)

                    
                }
                .frame(width: 320, alignment: .center)
                
              
        //        .foregroundColor(.blue)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    }
               
                
            

        }
            

        }
        .offset(y: 100)
        )
//        .edgesIgnoringSafeArea(.all)
//        .offset(y: -500)
       

        
    }
}

struct Redsol_Previews: PreviewProvider {
    static var previews: some View {
        Redsol()
    }
}


struct DropDown: View {
    
    @State var expand = false
    
    var body: some View {
        VStack() {
            Spacer()
            VStack(spacing: 30) {
                HStack() {
                    Text("Tipo de Mensaje")
                        .fontWeight(.thin)
                        .foregroundColor(.gray)
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6)
                        .foregroundColor(.blue)
                }.onTapGesture {
                    self.expand.toggle()
                }
                if expand {
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Text("No anda el app")
                            .padding(10)
                    }.foregroundColor(.gray)
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Text("Quiero donar y no se como")
                            .padding(10)
                    }.foregroundColor(.gray)
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Text("Los datos estan incorrectos")
                            .padding(10)
                    }.foregroundColor(.gray)
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Text("Otra causa")
                            .padding(10)
                    }.foregroundColor(.gray)
                }
            }
            .frame(width: 264)
            .padding()
//            .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(15)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 0.5)
                )
//            .shadow(color: .gray, radius: 5)
            .animation(.spring())
        }
      
    }
}


