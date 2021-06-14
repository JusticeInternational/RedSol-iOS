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
    
    var body: some View {
        
        ScrollView {
            HStack {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 160))
                VStack {
                    Text(username).bold()
                    Text(userID)
                    Text(email)
                }
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
