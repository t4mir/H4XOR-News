//
//  PostData.swift
//  H4XOR News
//
//  Created by Тамирлан Абаев   on 11.08.2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable,Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
