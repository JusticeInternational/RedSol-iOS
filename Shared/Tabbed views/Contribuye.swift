//
//  Contribuye.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/10/21.
//

import SwiftUI

struct Contribuye: View {
    var body: some View {
        ScrollView{
        
                VStack {
                    VStack(alignment: .leading) {
                        Text("¿Que Necesitamos?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")

                    }
                    
                    
                }
                .padding(.top, 15.0)
                .foregroundColor(Color.blue)
                
            
            
            .padding(.horizontal, 43.0)
        
        Divider().frame(height: 0.5).background(Color.gray)
        HStack {
            VStack{
                HStack{
                    VStack {
                        Text("Ayudanos")
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
                            Text("Donar")
                               
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)

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
                                Text("Ser Voluntario")
                                   
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, alignment: .topLeading)

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

struct Contribuye_Previews: PreviewProvider {
    static var previews: some View {
        Contribuye()
    }
}
