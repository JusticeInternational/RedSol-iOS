//
//  GraphQLNetwork.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/7/21.
//

import Foundation
import Apollo

// GraphQL Network
class Network {

    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(fileURLWithPath: "http://localhost:8080/graphql"))
    
}
