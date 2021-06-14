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
    
    // Navigation bar blue coloration for every view
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        
        UINavigationBar.appearance().barTintColor = .red
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 120))
                    VStack(alignment: .leading) {
                        Text(username).bold()
                        Text("ID: \(userID)")
                        Text(email)
                    }
                    
                }
            }
            .navigationBarTitle("test", displayMode: .inline)
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())

    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
