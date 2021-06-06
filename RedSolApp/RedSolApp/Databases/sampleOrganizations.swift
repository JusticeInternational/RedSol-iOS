//
//  data3.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/8/21.
//

import SwiftUI
import Foundation

class SampleOrganizations: ObservableObject, Identifiable {
    internal init(id: UUID = UUID(), name: String, image: String, address: String, name2: String, address2: String, name3: String, address3: String, name4: String, address4: String) {
        self.id = id
        self.name = name
        self.image = image
        self.address = address
        self.name2 = name2
        self.address2 = address2
        self.name3 = name3
        self.address3 = address3
        self.name4 = name4
        self.address4 = address4
    }
    
    @Published var id = UUID()
    @Published var name: String
    @Published var image: String
    @Published var address: String
    @Published var name2: String
    @Published var address2: String
    @Published var name3: String
    @Published var address3: String
    @Published var name4: String
    @Published var address4: String
}




var organizacionez = [
    SampleOrganizations (id: UUID(), name: "Santa Clara Valley Medical Center", image: "building 1",address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),

    SampleOrganizations (id: UUID(), name: "building 2", image: "building 1", address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
    
    SampleOrganizations (id: UUID(), name: "building 3", image: "building 1",address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
    
    SampleOrganizations (id: UUID(), name: "building 4", image: "building 1",address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
    
    SampleOrganizations (id: UUID(), name: "building 5", image: "building 1",address: "Santa Clara Medical center", name2: "logo 1", address2: "5 stars", name3: "650-876-7543", address3: "1989 Lihue street, Santa Clara", name4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", address4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
]
