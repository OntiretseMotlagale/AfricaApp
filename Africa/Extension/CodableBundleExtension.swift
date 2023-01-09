//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import Foundation
import SwiftUI

extension Bundle {
    
    func decode<T: Codable> ( file: String) -> T {
        
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to located \(file) in bundle")
        }
       
        //2. Createa property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        //3. Create a decoder
        let decoder = JSONDecoder()
        
        //4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        //5. Return the ready-to-use data
        return loaded
    }
}
