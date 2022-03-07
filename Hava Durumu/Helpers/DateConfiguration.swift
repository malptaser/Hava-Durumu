//
//  DateConfiguration.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//

import Foundation

class DateConfiguration {
    
    // MARK: - Functions
    
    class func convertDateToDayName(date: String, identifier: String) -> String {
        var dayName: String!
        }
   
    let dateFormatterForMainDate = DateFormatter()
    dateFormatterForMainDate.dateFormat = "yyyy-MM-dd"
 
    let dateFormatterForDay = DateFormatter()
    dateFormatterForDay.dateFormat = identifier
    dateFormatterForDay.locale = Locale(identifier: "tr_TR")
    
    if let date = dateFormatterForMainDate.date(from: date) {
        dayName = dateFormatterForDay.string(from: date)
    } else {
        print("There was an error decoding the string")
    }
    return dayName
    
}
