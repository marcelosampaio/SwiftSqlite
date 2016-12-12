//
//  Database.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import Foundation


class Database : NSObject {
    
    func querySql(_ sql: String) -> Array<Any> {
        
        print("**** QUERY SQL: \(sql)  will return array of nil")
        
        let data = db.query(sql: "select cityId, country, city, latitude, longitude, altitude from location order by country, city")
        var resultArray = [LocationRow]()
        
        
        
        for i in 0..<data.count {
            let row = data[i]
            
            let cityId = row["cityId"] as! Int
            let country = row["country"] as! String
            let city = row["city"] as! String
            let latitude = row["latitude"] as! String
            let longitude = row["longitude"] as! String
            let altitude = row["altitude"] as! String
            
            
            print("*** cityId: \(cityId)")
            print("*** country: \(country)")
            print("*** city: \(city)")
            print("----------------------------------")
            
            
            resultArray.append(LocationRow.init(cityId: 0, country: country, city: city, latitude: latitude, longitude: longitude, altitude: altitude))
            
        }

        return resultArray
    }
    
    func executeSql(_ sql: String) -> Int {
        
        print("**** QUERY SQL: \(sql)  will return zero Int")
        
        return 0
    }
    
}
