//
//  Moves.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/28/22.
//

import Foundation



struct Moves: Codable {
    let move: Move
}


struct MovesDetail: Codable {
    var moves: [Moves]?
}

struct Move :Codable {
    var name: String?
    var url: String?
    
    //Since it does have main key create a major key for all
    private enum RootResponseKey: String, CodingKey {
        case main
    }
    
    private enum MainKeys: String, CodingKey {
        case name
        case url
    }
    
    
  
    init (from decoder: Decoder) throws {
       // if let DataResponseContainer = try? decoder.container(keyedBy: DataResponseKey.self){
            //if (try? DataResponseContainer.nestedContainer(keyedBy: MainKeys.self, forKey: .main)) != nil
             //   self.name = try mainContainer.decoder(String.self, forKey: .name)
             //   self.url = try mainContainer.decoder(String.self, forKey: .url)
       // }
        
        let RootResponseContainer = try? decoder.container(keyedBy: RootResponseKey.self)
        let mainContainer = try? RootResponseContainer.decodd(keyedBy: MainKeys.self, forKey: .main)
        self.name = try mainContainer.decode(String.self, forKey: . name)
        self.url = try mainContainer.decode(String.self, forKey: . url)
    }
}




  








