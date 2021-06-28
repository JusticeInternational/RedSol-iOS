//
//  ProfileView.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/13/21.
//

import SwiftUI

struct ProfileView: View {
    @State var showMenu: Bool = false

    @State var username = "John Doe"
    @State var userID = "123456"
    @State var email = "johnDoe@gmail.com"
    
    
    func test() {
        //
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                HStack() {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 120))
                    
                    VStack(alignment: .leading) {
                        Text(username).bold()
                        Text("ID: \(userID)")
                        Text(email)
                        
                    }
                        
    //                    VStack(spacing: 10) {
    //                        Image(systemName: "gear")       // need to change to proper option box
    //                            .font(.system(size: 30))
    //                        Image(systemName: "qrcode.viewfinder")
    //                            .font(.system(size: 30))
    //
    //                        Image(systemName: "qrcode")     // need to change to person w/ info box
    //                            .font(.system(size: 30))
    //
    //                    }
                        
                
                    
                }
                .padding(50)
                Divider()
            }
            ZStack {
                Rectangle()
                    .foregroundColor(Color(UIColor.systemGray5))
                    .frame(width: 300, height: 300)
                    .cornerRadius(15)
                Image(systemName: "qrcode")     // todo: replace with real QR code
                    .font(.system(size: 300))
            }
           
            
        }

    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
