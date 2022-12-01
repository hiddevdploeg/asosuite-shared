//
//  Keyword.swift
//  
//
//  Created by Niels Mouthaan on 29/11/2022.
//

import Foundation

public struct Keyword: Codable, Equatable {
    
    public var keyword: String
    public var popularity: Int?
    
    public init(keyword: String, popularity: Int? = nil) {
        self.keyword = keyword.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: ",", with: "")
        self.popularity = popularity
    }
    
    public static func hasAllStatistics(keywords: [Keyword]) -> Bool {
        for keyword in keywords {
            if keyword.popularity == nil {
                return false
            }
        }
        return true
    }
    
    public static func == (lhs: Keyword, rhs: Keyword) -> Bool {
        return lhs.keyword == rhs.keyword
    }
}
