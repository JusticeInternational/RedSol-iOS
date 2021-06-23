//
//  home.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/15/21.
//

import SwiftUI

struct MyResources: View {
    
    // NAVIGATION BAR VARIABLES
    @State var showMenu = false
    // no

    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    VStack {
                        Text("Frase acerca de que somos")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("organizBlue"))
                            .multilineTextAlignment(.center)
                            .padding(.top, 49.0)
                            .frame(width: 321, alignment: .center)
                        
                    }
                    
                    
                    VStack{
                        Text("Que te ofrecemos / Cual es nuestra prupuesta de valor unico para ti / Que puedes hacer con nosotros /Porque nosotros */")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color("organizBlue"))
                            .padding(.top, 49.0)
                            .frame(width: 321, alignment: .center)
                    }
                    
                    //CTAs
                    VStack{
                        HStack{
                            VStack(alignment: .center) {
                                Text("      CTA 1      ")
                                    .font(.body)
                                    .fontWeight(.medium)
                                    //                        .padding(.vertical, 11.0)
                                    //                        .padding(.horizontal, 13.0)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .foregroundColor(Color("organizBlue"))
                                    .padding(10)
                            }
                            
                            .frame(minWidth: 0, maxWidth: 118, minHeight: 0,  maxHeight: 34)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color("organizBlue"), lineWidth: 3)
                            )
                            Spacer()
                            
                            VStack(alignment: .center) {
                                Text("      CTA 2      ")
                                    .font(.body)
                                    .fontWeight(.medium)
                                    //                        .padding(.vertical, 11.0)
                                    //                        .padding(.horizontal, 13.0)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .foregroundColor(Color("organizBlue"))
                                    .padding(10)
                            }
                            .frame(minWidth: 0, maxWidth: 118, minHeight: 0,  maxHeight: 34)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15
                                )
                                .stroke(Color("organizBlue"), lineWidth: 3)
                            )
                            
                        }
                        .padding(.horizontal, 21.0)
                        
                    }
                    .frame(width: 321, alignment: .center)
                    
                    .padding(.top, 68.0)
                    .padding(.bottom, 44.0)
                    
                    // Picture of the houses
                    
                    ZStack {
                        VStack{
                            Image("EllipseHome")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 185)
                            
                        }
                        Image("undraw_best_place")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.top, 49.0)
                            .frame(height: 185)
                        
                    }
                    
                    
                }
                .padding(.bottom, 115.0)
                
                
                // Inverted blue bubble section

                
                
                ZStack {
                    ZStack (alignment: .topLeading) {

                        RoundedRectangle(cornerRadius: 400,
                                         style: .continuous)
                            .foregroundColor(Color("organizBlue"))
                            .shadow(radius: 10)
                            .frame(width: .infinity)
                             // Tried using .mask here

                        Rectangle()
                            .fill(Color("organizBlue"))
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 100, alignment: .top)
                            .clipped()
                            .frame(width: 400)

                    }
                    .frame(height: 169, alignment: .center)
                                            .offset(y:-390)

                    
                    ZStack {
                        
                   
                        VStack{
                            
                           
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 321, height: 888)
                            .shadow(color: Color(#colorLiteral(red: 0.8980392217636108, green: 0.8980392217636108, blue: 0.8980392217636108, alpha: 0.4000000059604645)), radius:10, x:0, y:2)
                          
                        }
                        
                        VStack{
                            ZStack {
                                VStack {
                                    Circle()
                                    .fill(Color("organizBlue"))
                                        .frame(width: 85, height: 85)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y:2)
//
                                }
                                VStack {
                                    Image("magnifying")
                                        .resizable()
                                        .frame(width: 54.66, height: 54.66, alignment: .center)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                        
                                }
                               
                            }
                            Text("Descubre Organizaciones")
                                .font(.system(size: 16.0))
                                .fontWeight(.bold)
                                .foregroundColor(Color("organizBlue"))
                                .padding(.top, 17.0)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .font(.system(size: 14.0))
                                .fontWeight(.regular)
                                .foregroundColor(Color("organizBlue"))
                            Divider().padding(.top, 34.0).frame(maxWidth: 284)
                            Spacer()
                        }
                        .padding(.top, 35.0)
                        .padding(.horizontal, 84.0)
                        
                    }
                    
               
                    
                }

                Spacer()
                
                
            }
        }
//            .padding(.horizontal, 32.0)
    .navigationBarTitle("")
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    }
    
      
}
       
    


struct MyResources_Previews: PreviewProvider {
    static var previews: some View {
        MyResources()
    }
}
