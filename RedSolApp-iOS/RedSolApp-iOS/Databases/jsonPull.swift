//
//  json pull.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/8/21.
//

import SwiftUI

struct GHFollower: Decodable {
    let login: String
    let id: Int
}

func getJson(){
    guard let url = URL(string: "https://api.github.com/users/TwoStraws/followers") else {
    return
}
let request = URLRequest(url: url)
URLSession.shared.dataTask(with: request) { (data, response, error) in
    if let error = error {
        print(error.localizedDescription)
        return
    }
    guard let data = data else {
        return
    }
    let decoder = JSONDecoder()
    guard let decodedData = try? decoder.decode([GHFollower].self, from: data) else {
        return
    }
    let followers = decodedData
    for follower in followers {
        print(follower.login)
    }
}.resume()

}
