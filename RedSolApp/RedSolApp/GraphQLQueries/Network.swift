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
//    public init(networkTransport: NetworkTransport, store: ApolloStore) {

//    static let shared = Network()
//
//    private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:8080/graphql")!)
    
    func queryCategories() {
        let loadUsedCategoriesQuery = LoadUsedCategoriesQuery()
                
        apollo.fetch(query: loadUsedCategories) { [weak self] result, error in
            
            guard let girls = result?.data?.allGirls else { return }
            self?.girls = girls.map { $0.fragments.girlFullDetails }
            
            self?.tableView.reloadData()
        }
    }
}

