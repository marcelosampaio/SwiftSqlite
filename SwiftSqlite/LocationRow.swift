//
//  LocationRow.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import Foundation


struct LocationRow {
    let cityId: Int
    let country: String
    let city: String
    let latitude: String
    let longitude: String
    let altitude: String
    
    init(cityId: Int, country: String, city: String, latitude: String, longitude: String, altitude: String) {
        self.cityId = cityId
        self.country = country
        self.city = city
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude
    }

}


