//
//  CoffeeModel.swift
//  CoffeeDictionary
//
//  Created by Tophy on 2023/04/28.
//

import Foundation

struct CoffeeModel: Decodable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var imageUrl: String
    var wikiLink: String
}
