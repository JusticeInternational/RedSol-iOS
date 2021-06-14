//
//  Info.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/10/21.
//

import SwiftUI

struct OrganizationInfoView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                VStack {
                    VStack(alignment: .leading) {
                        Text("¿Quienes Somos?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")

                    }
                    
                    
                }
                .padding(.top, 15.0)
                .foregroundColor(Color.blue)
                
            }
            
            .padding(.horizontal, 43.0)
        
        Divider().frame(height: 0.5).background(Color.gray)

       
        VStack(alignment: .trailing) {
            
            HStack {
                VStack{
                    HStack{
                        VStack {
                            Text("Horario: 8:00am - 5:00pm")
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                    Spacer()
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                    }
                }
                

            }
            
            .padding(.vertical, 12.0)

            .foregroundColor(Color.blue)
            .padding(.horizontal, 43.0)


        Divider().frame(height: 0.5).background(Color.gray)
            
            
        HStack {
            VStack{
                HStack{
                    VStack {
                        Text("Ubicacion: Santa Clara")
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

        .foregroundColor(Color.blue)
        .padding(.horizontal, 43.0)
            Divider().frame(height: 0.5).background(Color.gray)

            HStack {
                VStack{
                    HStack{
                        VStack {
                            Text("Pagina Web: www.scvmc.com")
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

            .foregroundColor(Color.blue)
            .padding(.horizontal, 43.0)
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

            .foregroundColor(Color.blue)
            .padding(.horizontal, 43.0)
            Divider().frame(height: 0.5).background(Color.gray)

            HStack {
                VStack{
                    HStack{
                        VStack {
                            Text("e-mail: scvmc@correo.com")
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                    Spacer()
                        VStack {
                            Image(systemName: "envelope")
                                .resizable()
                                .frame(width: 34, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                    }
                }
                

            }
            
            .padding(.vertical, 12.0)

            .foregroundColor(Color.blue)
            .padding(.horizontal, 43.0)
            Divider().frame(height: 0.5).background(Color.gray)

            
            
           
        }
            VStack {
                Text("Esta organizacion no ha sido reclamada")
                    .fontWeight(.thin)
                Text("Eres el Dueno? Reclamar")
                    .fontWeight(.thin)
            }
            .padding(.vertical, 12.0)

            .foregroundColor(Color.blue)
            .padding(.horizontal, 43.0)
    }
    }
}

struct OrganizationInfoView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationInfoView()
    }
}
