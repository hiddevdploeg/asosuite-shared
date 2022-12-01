//
//  Keyword+Accessors.swift
//  
//
//  Created by Niels Mouthaan on 30/11/2022.
//

import Foundation

extension Keyword {
    
    public static func updateStatistics(keywords: [Keyword], region: String) async throws -> [Keyword] {
        if keywords.count == 0 {
            return keywords
        }
        var url = URL.API(path: "/keywords/statistics")
        let commaSeperatedKeywords = keywords.map({$0.keyword}).joined(separator: ",")
        url.append(queryItems: [
            URLQueryItem(name: "keywords", value: commaSeperatedKeywords),
            URLQueryItem(name: "region", value: "US") // TODO: Don't hardcode this
        ])
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Keyword].self, from: data)
    }
}
