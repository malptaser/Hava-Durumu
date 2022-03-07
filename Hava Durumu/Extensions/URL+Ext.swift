//
//  URL+Ext.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//

import UIKit

extension URL {
    
    // MARK: - Functions
    func withQueries(_ queries: [String : String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.0, value: $0.1) }
        
        return components?.url
    }
}
