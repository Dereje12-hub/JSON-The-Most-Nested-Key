//
//  FileLoader.swift
//  JSON-Parsing-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/27/22.
//

import Foundation

//Method 1
/*
class FileLoader {
    
    
    static func readLocalFile(_ fileName: String) -> Data? {
        guard let data = Bundle.main.path(forResource: fileName, ofType: "json")
                
            else {
                fatalError("Unable locate \"\(fileName)\" in main.")
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


*/



//Method 2
/*
class FileLoader {
    
    //@Publish allows to update in a more efficient way
    @Published var SpeciesData = [Species]()
    
    static func parseJSON(_ fileName: String) {
        if let fileLocation = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            //IN CASE OF ERROR
            do {
                let data = try Data(contentsOf: fileLocation)
                
                //let jsonDecoder = JSONDecoder()
                //let dataFromJson = try jsonDecoder.decode([SpeciesData].self, from: data)
                
                //self.SpeciesData = dataFromJson
                let speciesResponse = try? JSONDecoder().decode(Species.self, from: data)
                if let speciesResponse = speciesResponse {
                    print(speciesResponse)
                }
                
            }catch{
                print(error)
            }
        }
        
    }
}


*/


/*
class URLSessions {
    URLSession.shared.dataTask(with: url) { data, _, _ in
        if let data = data {
            let speciesResponse = try? JSONDecoder().decode(Species.self, from: data)
            if let speciesResponse = speciesResponse {
                print(speciesResponse)
            }
        }
    }.resume()
}
*/

/*
class FileLoader {
    
    
    static func readLocalFile(_ fileName: String) -> Data? {
        guard let data = Bundle.main.path(forResource: fileName, ofType: "json")
        
            else {
                fatalError("Unable locate \"\(fileName)\" in main.")
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


*/
class JSONParser {
    
    typealias ResultBlock<T> = (Result <T, Error>) -> Void

   static func downloadList<T: Decodable>(of type: T.Type,
                                      from data: Data,
                                      completion: @escaping ResultBlock<T>) {

        do {
            let decodedData: T = try JSONDecoder().decode(T.self, from: data)
            completion(.success(decodedData))
            print(decodedData)                  //printing
        }
        catch {
            //completion(.failure(DataError.decodingError))
            fatalError("Unable to decode  \(data)  ")
        }
   }
}





