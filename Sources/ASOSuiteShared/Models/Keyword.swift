//
//  Keyword.swift
//  
//
//  Created by Niels Mouthaan on 29/11/2022.
//

import Foundation

public struct Keyword: Codable {
    
    public init(keyword: String, popularity: Int? = nil) {
        self.keyword = keyword.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: ",", with: "")
        self.popularity = popularity
    }
    
    public var keyword: String
    public var popularity: Int?
    
    public static func hasAllStatistics(keywords: [Keyword]) -> Bool {
        for keyword in keywords {
            if keyword.popularity == nil {
                return false
            }
        }
        return true
    }
}
