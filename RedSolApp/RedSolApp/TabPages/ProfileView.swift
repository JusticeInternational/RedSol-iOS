//
//  ProfileView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/13/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State var username = "John Doe"
    @State var userID = "123456"
    @State var email = "johnDoe@gmail.com"
    
    //MARK: - Navigation bar blue coloration for every view
    init() {
        
        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]

//        Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().barTintColor = UIColor(red: 82 / 255, green: 130 / 255, blue: 240 / 255, alpha: 1.0)
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func test() {
        //
    }
    
    var body: some View {
        
        
        
        NavigationView {
            
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
                    
                    
                }.offset(y: 20)
                
            }
            .navigationBarTitle("", displayMode: .inline)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { test() }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 60))
                            
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(.white)

        
        

    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
