//
//  ProfileView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/13/21.
//

import SwiftUI

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

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
