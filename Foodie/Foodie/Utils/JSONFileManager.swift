//
//  JSONFileManager.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import Foundation

class JSONFileManager {
    static func load<T: Decodable>(_ filename: String) -> T {
        let data : Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else { fatalError("cant load file") }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("file couldnt be loaded: \(filename)")
        }
        
        do {
            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch {
            fatalError("cant parse the file")
        }
    }
}
