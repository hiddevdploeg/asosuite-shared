//
//  URL+Extensions.swift
//  
//
//  Created by Niels Mouthaan on 30/11/2022.
//

import Foundation

extension URL {
    
    private static let host = "https://asosuite.com/api"
    
    public static func API(path: String) -> URL {
        return URL(string: host.appending(path))!
    }
}
