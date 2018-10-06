//
//  TLAReadingPracticeModelStore.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import Foundation

class TLAModelEntryStore<T: Decodable> {
    
    func getModelEntries(fileName: String) -> [T] {
        var jsonData: Data?
        do {
            let filePath = Bundle.main.path(forResource: fileName, ofType: "json")
            jsonData = try Data(contentsOf: URL.init(fileURLWithPath: filePath!))
        }
        catch {
            print(error)
        }
        
        if let json = jsonData {
            do {
                let models = try JSONDecoder().decode([T].self, from: json)
                return models
            }
            catch {
                print(error)
                return []
            }
        }
        return []
    }
}
