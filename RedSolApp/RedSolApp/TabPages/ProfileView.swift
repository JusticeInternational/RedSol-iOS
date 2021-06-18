//
//  ProfileView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/13/21.
//

import SwiftUI

struct ProfileViewNavigation: View {
    
    @State var showMenu = false
    
    //MARK: - Navigation bar blue coloration for every view
    init() {
        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]

//        Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().barTintColor = UIColor(red: 82 / 255, green: 130 / 255, blue: 240 / 255, alpha: 1.0)
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    ProfileView(showMenu: $showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
//                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        ProfileViewMenu()
                            .frame(width: geometry.size.width * 0.8)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(.white)
    }
}

struct ProfileView: View {
    @Binding var showMenu: Bool

    @State var username = "John Doe"
    @State var userID = "123456"
    @State var email = "johnDoe@gmail.com"
    
    
    func test() {
        //
    }
    
    var body: some View {
        
        ScrollView {
            HStack() {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 120))
                HStack {
                    VStack(alignment: .leading) {
                        Text(username).bold()
                        Text("ID: \(userID)")
                        Text(email)
                        
                    }
                    VStack(spacing: 10) {
                        Image(systemName: "gear")       // need to change to proper option box
                            .font(.system(size: 30))
                        Image(systemName: "qrcode.viewfinder")
                            .font(.system(size: 30))

                        Image(systemName: "qrcode")     // need to change to person w/ info box
                            .font(.system(size: 30))

                    }
                }
                
                
            }
            .padding()
            Divider()
            

            
        }
        .navigationBarTitle("", displayMode: .inline)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    withAnimation {
                        self.showMenu = true
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 60))
                }
            }
            
        }
        
        
        
    }


}

struct ProfileViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewNavigation()
    }
}
