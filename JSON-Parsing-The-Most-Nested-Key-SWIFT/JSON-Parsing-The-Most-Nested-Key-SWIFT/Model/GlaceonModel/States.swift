//
//  States.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/29/22.
//

import Foundation

struct Stats: Codable {
    let base_stat: Int
    let effort: Int
    let stat: Stat
    
    enum CodingKeys : String, CodingKey {
        case base_stat
        case effort
        case stat
    }
}
struct Stat: Codable {
    let name: String
    let url: String
}
