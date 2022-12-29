//
//  abilities.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/29/22.
//

import Foundation

//struct Abilities :Codable {
//    
//    let ability: Able
//    let is_hidden: Bool
//    let slot: Int
//
//    struct Able: Codable {
//        var name: String
//        var url: String
//
//    }
//    
//    
//}


struct Abilities: Codable {
    let ability: Ability
    let is_hidden: Bool
    let slot: Int
    
    
    enum CodingKeys : String, CodingKey {
        case ability
        case is_hidden
        case slot
    }
}
//struct for nested arrays of Abilities
struct Ability: Codable {
    let name: String
    let url: String
}
