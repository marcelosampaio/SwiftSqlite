//
//  Database.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import Foundation


class Database : NSObject {
    
    func getLocations() -> Array<Any> {
        
        // query execution
        let data = db.query(sql: "select cityId, country, city, latitude, longitude, altitude from location order by country, city")
        
        // set up result array
        var resultArray = [LocationRow]()
        
        // data retrieval
        for i in 0..<data.count {
            let row = data[i]
            
            let cityIdX = row["cityId"] as! Int
            let country = row["country"] as! String
            let city = row["city"] as! String
            let latitude = row["latitude"] as! String
            let longitude = row["longitude"] as! String
            let altitude = row["altitude"] as! String
            
            // loading result array
            resultArray.append(LocationRow.init(cityId: cityIdX, country: country, city: city, latitude: latitude, longitude: longitude, altitude: altitude))
            
        }
        
        return resultArray
    }


    
    
    func querySql(_ sql: String) -> Array<Any> {
        
        // query execution
        let data = db.query(sql: sql)
        
        // set up result array
        var resultArray = [LocationRow]()
        
        // data retrieval
        for i in 0..<data.count {
            let row = data[i]
            
            let cityIdX = row["cityId"] as! Int
            let country = row["country"] as! String
            let city = row["city"] as! String
            let latitude = row["latitude"] as! String
            let longitude = row["longitude"] as! String
            let altitude = row["altitude"] as! String

            // loading result array
            resultArray.append(LocationRow.init(cityId: cityIdX, country: country, city: city, latitude: latitude, longitude: longitude, altitude: altitude))
            
        }

        return resultArray
    }
    
    func executeSql(_ sql: String) -> Int {
        
        // sql statment execution
        var i = 0
        i=Int(db.execute(sql: sql))
        print("*** sql execution code: \(i)")
        
        return i
        
    }
    
}
