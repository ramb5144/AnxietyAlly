//
//  Extensions.swift
//  ERP
//
//  Created by Rishi Ambavanekar on 6/15/21.
//

import Foundation

public class ExtensionsManager {
    static let shared = ExtensionsManager()

    
}

extension String {
    
    func safeDatabaseKey() -> String {
        return self.replacingOccurrences(of: ".", with: "-").replacingOccurrences(of: "@", with: "-")
    }
    
}
