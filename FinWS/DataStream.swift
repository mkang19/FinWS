//
//  DataStream.swift
//  FinWS
//
//  Created by Madison on 5/2/19.
//  Copyright © 2019 Madison. All rights reserved.
//

import Foundation
class DataStream {

    var windDirection:String!
    var windSpeed:String!
    //var windGust:String!
    //var windAverageSpeed:String!
    //var windAverageDirection:String!
    //var windMaxGust:String!
    //var windGustDirection:String!

    
    var humidity:String!
    var dewpoint:String!
    var temperature:String!
    var rainHour:String!
    var rainDay:String!
    var barometic:String!
    
    
    init(stream : String) {
        self.windDirection = (stream as NSString).substring(with: NSRange.init(location: 8, length: 5))
        self.windSpeed = (stream as NSString).substring(with: NSRange.init(location: 27, length: 5))
        self.humidity = (stream as NSString).substring(with: NSRange.init(location: 42, length: 5))
        self.dewpoint = (stream as NSString).substring(with: NSRange.init(location: 55, length: 5))
        self.temperature = (stream as NSString).substring(with: NSRange.init(location: 67, length: 5))
        self.rainHour = (stream as NSString).substring(with: NSRange.init(location: 80, length: 4))
        self.rainDay = (stream as NSString).substring(with: NSRange.init(location: 97, length: 4))
        self.barometic = (stream as NSString).substring(with: NSRange.init(location: 110, length: 5))
    }
    
    
}
