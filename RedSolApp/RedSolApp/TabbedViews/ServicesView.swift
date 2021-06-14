//
//  Servicios.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/10/21.
//

import SwiftUI

struct ServicesView: View {
    var body: some View {
        ScrollView {
        HStack {
            VStack{
                HStack{
                    VStack {
                        Text("Categorias de Nuestros Servicios")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                Spacer()
//                    VStack {
//                        Image(systemName: "clock")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
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
                    VStack(alignment: .leading) {
                        Text("Descripcion General")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                        
                        VStack(alignment: .center) {
                            Text("  Me interesa  ")
                                .font(.body)
                                .fontWeight(.bold)
                                .padding(.vertical, 11.0)
                                .padding(.horizontal, 13.0)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(10)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  alignment: .center)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 40)
//                                    .stroke(Color.purple, lineWidth: 5)
//                            )
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
//                Spacer()
//                    VStack {
//                        Image(systemName: "clock")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                }
            }
            

        }
        
        .padding(.vertical, 12.0)

        .foregroundColor(Color.blue)
        .padding(.horizontal, 43.0)
//        Divider().frame(height: 0.5).background(Color.gray)

        HStack {
            VStack{
                HStack{
                    VStack {
                        Text("Servicios Detallados")
                            .fontWeight(.bold)
//                            .padding(.bottom)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
//                Spacer()
//                    VStack {
//                        Image(systemName: "clock")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                    .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
                }
            }
            

        }
        
        .padding(.bottom, -3.0)

        .foregroundColor(Color.blue)
        .padding(.horizontal, 43.0)
        Divider().frame(height: 0.5).background(Color.gray)
            
            HStack {
                VStack{
                    HStack{
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)

                        VStack {
                            Text("Pruebas Covid-19")
                               
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                    Spacer()
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
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
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)

                        VStack {
                            Text("Vacunas Covid-19")
                            Text("Evento Disponible")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.yellow)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)
                    Spacer()
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        .frame(minWidth: 0, maxWidth: 25, minHeight: 0, alignment: .topTrailing)
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


    }
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}
