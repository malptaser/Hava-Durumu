//
//  WeatherDescription.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//

import UIKit

struct WeatherDescription: Codable {
    
    // MARK: - Properties

    var iconName: String
    var description: String
    var icom: UIImage? {
        return UIImage(named: iconName)
    }

    enum CodingKeys: String, CodingKey {
        case iconName = "icon"
        case description = "description"
    }




}
