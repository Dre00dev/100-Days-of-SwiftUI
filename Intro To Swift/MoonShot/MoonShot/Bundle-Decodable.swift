//
//  Bundle-Decodable.swift
//  MoonShot
//
//  Created by Andres Pulgarin on 3/29/23.
//

import Foundation

extension Bundle {
    func decode(_ file: String)-> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else{
            fatalError("Failed to decode <3")
        }
        
        return loaded
    }
}
