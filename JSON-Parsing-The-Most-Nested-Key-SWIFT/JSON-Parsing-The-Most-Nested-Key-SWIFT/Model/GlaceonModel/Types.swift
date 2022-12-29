//
//  Types.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/29/22.
//

import Foundation

struct Types: Codable {
    
    var types: [Types]
    
    var slot: Int
    var type: DetailTypes

    struct DetailTypes: Codable {
        var name: String
        var url: String
    }
}
