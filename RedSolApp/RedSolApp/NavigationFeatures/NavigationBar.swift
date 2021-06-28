//
//  NavigationHeader.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/22/21.
//

import SwiftUI

struct NavigationBar: View {
    
    @State var showMenu: Bool = false
    @State var currentMenu: String
    
    //MARK: - Navigation bar blue coloration for every view
    init(currentMenu: State<String>) {
        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]

//        Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().barTintColor = UIColor(red: 82 / 255, green: 130 / 255, blue: 240 / 255, alpha: 1.0)
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
       
        self._currentMenu = currentMenu

    }
    
    func printthing() {
        print("menu changed")
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
                    
                    if (currentMenu == "My Resources") {
                        MyResourcesPageView(showMenuMyResources: $showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        if self.showMenu {
                            HamburgerMenu()
                                .frame(width: geometry.size.width / 2)
                                .transition(.move(edge: .leading))
                        }
                    }
                    else if (currentMenu == "Map View") {
                        MapView(showMenuMapView: $showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        if self.showMenu {
                            HamburgerMenu()
                                .frame(width: geometry.size.width / 2)
                                .transition(.move(edge: .leading))
                        }
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

        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

//struct NavigationBar_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBar()
//    }
//}
