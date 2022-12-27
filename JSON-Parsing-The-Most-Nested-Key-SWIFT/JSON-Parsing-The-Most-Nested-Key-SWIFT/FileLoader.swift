//
//  FileLoader.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/27/22.
//

import Foundation


class FileLoader {
    
    static func readLocalFile(_ fileName: String) -> Data? {
        guard let data = Bundle.main.path(forResource: fileName, ofType: "json")
                
            else {
                fatalError("Unable to locate file \"\(fileName)\" in main bundle.")
        }
        let url = URL(fileURLWithPath: data)
        
        do {
            let jsonData = try Data(contentsOf: url)
           
            return try String(contentsOfFile: data).data(using: .utf8)
        } catch {
            fatalError("Unable to load \"\(fileName)\" from main bundle:\n\(error)")
        }
    }
    
    
    static func loadJson(_ data: Data) -> ModelGlace {
        do {
            
            return try JSONDecoder().decode(ModelGlace.self, from: data)
            
            
            
        } catch {
            fatalError("Unable to decode  \"\(data)\" as \(ModelGlace.self):\n\(error)")
        }
    }
}




