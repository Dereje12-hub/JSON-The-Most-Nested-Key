//
//  File.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/27/22.
//


import Foundation


//*
 //METHOD 1
 
//Model represent the Json structure
struct ModelGlace: Codable {
    var height: Int
    var id : Int
    var is_default: Bool
    var location_area_encounters: String
    var name: String
    var order: Int
    var base_experience: Int
    var weight: Int

   
    var species: Species
    var sprites: Sprites
    
    var moves : [Moves]
    var abilities: [Abilities]
    var forms: [Forms]
    var game_indices: [GameIndices]
    var stats: [States]
    var types: [Types]
    
    struct Species: Codable {
        var name: String
        var url: String
    }

    struct Sprites: Codable{
        var back_default: String
        var back_female: String?
        var back_shiny: String
        var back_shiny_female: String?
        var front_default: String
        var front_female: String?
        var front_shiny: String
        var front_shiny_female: String?
    }
    
    struct Abilities: Codable {

        var ability: Able
        var is_hidden: Bool
        var slot: Int

        struct Able: Codable {
            var name: String
            var url: String
        }
    }
    
    struct Forms: Codable {
        var name: String
        var url: String
    }

    struct GameIndices: Codable {
        var game_index: Int
        var version: Version

        struct Version: Codable {
            var name: String
            var url: String
        }
    }


    struct States: Codable {
        var base_stat: Int
        var effort: Int
        var stat: Stats

        struct Stats: Codable {
            var name: String
            var url: String
        }
    }

    struct Types: Codable {
        var slot: Int
        var type: DetailTypes

        struct DetailTypes: Codable {
            var name: String
            var url: String
        }
    }


    struct Moves: Codable {
        var move: Move

        struct Move: Codable {
            var name: String
            var url: String
        }

    }
}


//*/








