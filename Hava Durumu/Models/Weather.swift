//
//  Weather.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//

import Foundation

struct Weather: Codable {
    
    // MARK: - Properties
    var cityName: String
        var data: [DailyWeather]
        
        enum CodingKeys: String, CodingKey {
            case cityName = "city_name"
            case data = "data"
        }
}

