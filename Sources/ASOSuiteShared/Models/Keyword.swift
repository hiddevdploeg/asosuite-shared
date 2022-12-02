//
//  Keyword.swift
//  
//
//  Created by Niels Mouthaan on 29/11/2022.
//

import Foundation

public struct Keyword: Codable, Hashable {
    
    public var keyword: String
    public var popularity: Int?
    
    public init(keyword: String, popularity: Int? = nil) {
        self.keyword = keyword.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: ",", with: "")
        self.popularity = popularity
    }
    
    public static func filterIllegalCharacters(_ keyword: String) -> String {
        // TODO: We might need more aggressive filtering. We also need server-side verification.
        return keyword.filter { $0.isLetter || $0.isNumber  || $0 == Character(" ")}
    }
}
