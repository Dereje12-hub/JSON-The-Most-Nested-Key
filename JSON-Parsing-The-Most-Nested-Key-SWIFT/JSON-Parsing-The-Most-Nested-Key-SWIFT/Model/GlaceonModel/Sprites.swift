//
//  Sprites.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/28/22.
//

import Foundation

struct Sprites: Codable {
    
    let back_default: String?
    let back_female: String?
    let back_shiny: String?
    let back_shiny_female: String?
    let front_default: String?
    let front_female: String?
    let front_shiny: String?
    let front_shiny_female: String?
    
    //*
    
    init(back_default: String?, back_female: String?, back_shiny: String?, front_default: String?, front_female: String?, front_shiny: String?, back_shiny_female: String?, front_shiny_female: String?  ){
        
        self.back_default = back_default
        self.back_female = back_female
        self.back_shiny = back_shiny
        self.back_shiny_female = back_shiny_female
        self.front_default = front_default
        self.front_female = front_female
        self.front_shiny = front_shiny
        self.front_shiny_female = front_shiny_female
        
    }
    //*/
    
    
    private enum SpritesKeys: String, CodingKey {
        case sprites
    }
    
    private enum spritesKeys: String, CodingKey {
        case back_default
        case back_female
        case back_shiny
        case back_shiny_female
        case front_default
        case front_female
        case front_shiny_female
        
    }
    
    
    init(from decoder: Decoder) throws {
        //decode the whole one
        //        if let SpritesContainer = try? decoder.container(keyedBy: SpritesKeys.self)  {
        //
        //            if let spritesContainer = try? SpritesContainer.nestedContainer(keyedBy: spritesKeys.self, forKey: .sprites){
        //
        //                self.back_default = try spritesContainer.decode(String.self, forKey: .back_default)
        //                self.back_female = try spritesContainer.decode(String.self, forKey: .back_female)
        //                self.back_shiny = try spritesContainer.decode(String.self, forKey: .back_shiny)
        //                self.back_shiny_female = try spritesContainer.decode(String.self, forKey: .back_shiny_female)
        //                self.front_default = try spritesContainer.decode(String.self, forKey: .front_default)
        //                self.front_female = try spritesContainer.decode(String.self, forKey: .front_female)
        //                self.front_shiny_female = try spritesContainer.decode(String.self, forKey: .front_shiny_female)
        //            }
        //        }
        
        let SpritesContainer = try decoder.container(keyedBy: SpritesKeys.self)
        let spritesContainer = try SpritesContainer.nestedContainer(keyedBy: spritesKeys.self, forKey: .sprites)
        self.back_default = try spritesContainer.decodeIfPresent(String.self, forKey: .back_default)
        self.back_female = try spritesContainer.decodeIfPresent(String.self, forKey: .back_female)
        self.back_shiny = try spritesContainer.decodeIfPresent(String.self, forKey: .back_shiny)
        self.back_shiny_female = try spritesContainer.decodeIfPresent(String.self, forKey: .back_shiny_female)
        self.front_default = try spritesContainer.decodeIfPresent(String.self, forKey: .front_default)
        self.front_female = try spritesContainer.decodeIfPresent(String.self, forKey: .front_female)
        self.front_shiny_female = try spritesContainer.decodeIfPresent(String.self, forKey: .front_shiny_female)
    }
     
 }

