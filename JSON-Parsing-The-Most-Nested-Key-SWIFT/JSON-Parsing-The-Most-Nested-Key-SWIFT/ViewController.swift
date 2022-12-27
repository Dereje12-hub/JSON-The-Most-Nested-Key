//
//  ViewController.swift
//  JSON-PARSING-The-Most-Nested-Key-SWIFT
//
//  Created by Consultant on 12/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print(data)

        
        if let data = FileLoader.readLocalFile("SampleJSONGlaceon")
        //if let mostNested = FileLoader.read
        {
            let glceon = FileLoader.loadJson(data)
            print(" Most Nested  \(glceon)")
        }
        
        
        


    }






}






