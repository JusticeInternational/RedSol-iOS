//
//  Organizationdetails.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/8/21.
//

import SwiftUI
struct OrganizationHeader: View {
    @StateObject var organizaciones: SampleOrganizations = organizacionez[0]
    @State private var selection = 1
    @State var current = "house.fill"
    @Namespace var animation
    
//    @Binding var selected : Int

    @State var selected = 0
    
    var body: some View {
       
        // Header
        ZStack {
        
            Image("\(organizaciones.image)")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .bottom) {
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 170)
                    .opacity(0.3)
            }
            .padding(.top, 30.0)
            
            VStack(alignment: .leading) {
                
                //logo+text=stars+icons
                HStack {
                    VStack {
                        Image("logo 1")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(organizaciones.name)")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    
                                    
                                    
                                }
                                
                                .padding(.top, 3.0)
                                .foregroundColor(.yellow)
                                
                            }
                            VStack {
                                Image(systemName: "person.3.fill")
                                    .resizable()
                                    .frame(width: 48, height: 35)
                                Text("100.000")
                            }
                            .foregroundColor(Color.white)
                        }
                        HStack(spacing: 35) {
                            Image(systemName: "phone")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Image(systemName: "map")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .frame(width: 20, height: 25)
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 18, height: 25)
                            Image(systemName: "dollarsign.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                        
                        .padding(.top, 3.0)
                        .foregroundColor(Color.white)
                    }
                    
                    
                }
                
            }
            .padding(.top, 76.0)
           

            
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 200, maxHeight: 100, alignment: .center)
        .clipped()
        ZStack {
            
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 40)
                    .opacity(0.3)
//            HStack(spacing: 0){
//
//                                TabBarButton(current: $current, image: "house.fill", animation: animation)
//                                TabBarButton(current: $current, image: "magnifyingglass", animation: animation)
//                                TabBarButton(current: $current, image: "person.2.fill", animation: animation)
//                                TabBarButton(current: $current, image: "tv.fill", animation: animation)
//                            }

            
            
            HStack {
                
                Button(action: {
                    self.selected = 0
                }) {Text("Info").fontWeight(.semibold).foregroundColor(self.selected == 0 ? .white : Color.white.opacity(0.5)).underline(self.selected == 0 ? true : false)}
                                                
         
                
                Button(action: {
                    self.selected = 1
                }) {Text("Servicios").fontWeight(.semibold).foregroundColor(self.selected == 1 ? .white : Color.white.opacity(0.5)).underline(self.selected == 1 ? true : false)}
                                              
         
                
                Button(action: {
                    self.selected = 2
                }) {Text("Actividad").fontWeight(.semibold).foregroundColor(self.selected == 2 ? .white : Color.white.opacity(0.5)).underline(self.selected == 2 ? true : false)}
                                               
        
                
                Button(action: {
                    self.selected = 3
                }) {Text("Contribuye").fontWeight(.semibold).foregroundColor(self.selected == 3 ? .white : Color.white.opacity(0.5)).underline(self.selected == 3 ? true : false)}
                                               
        
                Button(action: {
                    self.selected = 4
                }) {Text("Eventos").fontWeight(.semibold).foregroundColor(self.selected == 4 ? .white : Color.white.opacity(0.5)).underline(self.selected == 4 ? true : false)}
            }
        }
        
        GeometryReader{_ in
            VStack{
                if self.selected == 0{
                    OrganizationInfoView()

                }
                else if self.selected == 1{
                    ServicesView()
                }
                else if self.selected == 2{
                    Text("Actividad")
                }
                else if self.selected == 3{
                    ContributeView()

                }
                else if self.selected == 4{
                    Text("Eventos")
                }
            }
            
            
        }
        
        Spacer()
            
      
//        TabView() {
//                    Text("First Content View")
//                        .tabItem {
//                            Text("Info")
//                        }.tag(1)
//                    Text("Servicios")
//                        .tabItem {
//                            Text("Servicios")
//                        }.tag(2)
//                    Text("Actividad")
//                        .tabItem {
//                            Text("Actividad")
//                        }.tag(3)
//            Text("Contribuye")
//                .tabItem {
//                    Text("Contribuye")
//                }.tag(4)
//            Text("Eventos")
//                .tabItem {
//                    Text("Eventos")
//                }.tag(5)
//                }
//                .font(.largeTitle)
//        Spacer()
//            .navigationBarBackButtonHidden(true)

    }
    
}

struct OrganizationHeader_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationHeader()
    }
}
