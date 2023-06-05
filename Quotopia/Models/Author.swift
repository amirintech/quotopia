//
//  Quote.swift
//  Quotopia
//
//  Created by Amir on 05/06/2023.
//

import Foundation

struct Author: Identifiable, Decodable {
    var id: Int
    var name: String
    var birthYear: Int
    var deathYear: Int
    var background: String
    var img: String
    var backgroundImg: String
    var popularQuotes: [String]
}
