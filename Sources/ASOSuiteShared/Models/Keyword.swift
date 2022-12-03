//
//  Keyword.swift
//  
//
//  Created by Niels Mouthaan on 29/11/2022.
//

import Foundation

public struct Keyword: Codable, Hashable, Equatable, Identifiable {
    
    public var id: String {
        return keyword
    }
    public var keyword: String
    public var popularity: Int?
    
    public static func == (lhs: Keyword, rhs: Keyword) -> Bool {
        return lhs.keyword.localizedCaseInsensitiveCompare(rhs.keyword) == .orderedSame
    }
    
    public init(keyword: String, popularity: Int? = nil) {
        self.keyword = keyword.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: ",", with: "")
        self.popularity = popularity
    }
    
    public static func filterIllegalCharacters(_ keyword: String) -> String {
        // TODO: We might need more aggressive filtering. We also need server-side verification.
        return keyword.filter { $0.isLetter || $0.isNumber  || $0 == Character(" ")}
    }
    
    public func existsIn(_ keywords: [Keyword]) -> Bool {
        return keywords.contains { $0 == self }
    }
}
