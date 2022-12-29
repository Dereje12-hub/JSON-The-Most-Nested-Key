//
//  ViewController.swift
//  JSON-PARSING-The-Most-Nested-Key-SWIFT
//
//  Created by Dereje on 12/26/22.
//

import UIKit


//Method1
/*
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        if let data = FileLoader.readLocalFile("SampleJSONGlaceon")
        {
            let glceon = FileLoader.loadJson(data)
            print(" Most Nested  \(glceon)")
        }
    }

}
*/


//Method 2
/*
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        parseJSON("SampleJSONGlaceon")
    }
    
    
    func parseJSON(_ fileName: String) {
        if let fileLocation = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            //IN CASE OF ERROR
            do {
                let data = try Data(contentsOf: fileLocation)
                
                let jsonDecoder = JSONDecoder()
               // let dataFromJson = try jsonDecoder.decode(ModelGlace.self, from: data)
                
                //self.SpeciesData = dataFromJson
                let speciesResponse = try? JSONDecoder().decode(Sprites.self, from: data)
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

//Generic

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        parseGenericJSON ("SampleJSONGlaceon") {(Speciess: Species) in
            print(Speciess.name!)
            //print(SPeciess)
        }
        
        parseGenericJSON ("SampleJSONGlaceon") {(Sprites: Sprites) in
            //print(Sprites)
            //print(SPRrites)
        }
        
        
        parseGenericJSON ("SampleJSONGlaceon") {(Forms: Forms) in
            //print(Forms.url!)
            //print(Forms)
        }
        
        parseGenericJSON ("SampleJSONGlaceon") {(Moves: [MovesDetail]) in
            //print(SSpeciess.url!)
            //print(Moves)
        }
        
    }
    
    
    //func parseGenericJSON(_ fileName: String ) {
    fileprivate func parseGenericJSON<T: Decodable>(_ fileName: String, completion: @escaping (T) -> ())
    {
        
        //let fileName = "SampleJSONGlaceon"
        if let fileLocation = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            //IN CASE OF ERROR
            
            do {
                let data = try Data(contentsOf: fileLocation)
        
                //self.SpeciesData = dataFromJson
                guard let obj = try? JSONDecoder().decode(T.self, from: data) else { return }
                completion(obj)
                //print(obj)
            }catch let jsonErr {
                print("Failed ot decode json", jsonErr)
            }
        }
        
    }
}



