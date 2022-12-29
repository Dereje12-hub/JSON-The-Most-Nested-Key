//
//  Species.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/28/22.
//

import Foundation



struct Species: Codable {
    let name: String?
    let url: String?
    
    init(name: String?, url: String?){
        self.name = name
        self.url = url
    }
    
    
    private enum SpeciesResponseKeys: String, CodingKey {
        case species
    }
    private enum speciesKeys: String, CodingKey {
        case name
        case url
    }
    
    init (from decoder: Decoder) throws {
        
//        if let SpeciesResponseContainer = try? decoder.container(keyedBy: SpeciesResponseKeys.self){
//
//            if let speciesContainer = try? SpeciesResponseContainer.nestedContainer(keyedBy: speciesKeys.self, forKey: .species){
//
//                self.name = try speciesContainer.decodeIfPresent(String.self, forKey: .name)
//                self.url = try speciesContainer.decodeIfPresent(String.self, forKey: .url)
//            }
//
//
//
//        }
        
        
        let SpeciesContainer = try decoder.container(keyedBy: SpeciesResponseKeys.self)
        let speciesContainer = try SpeciesContainer.nestedContainer(keyedBy: speciesKeys.self, forKey: .species)
        self.name = try speciesContainer.decodeIfPresent(String.self, forKey: .name)
        self.url = try speciesContainer.decodeIfPresent(String.self, forKey: .url)
    }
    
    
    
    
}



