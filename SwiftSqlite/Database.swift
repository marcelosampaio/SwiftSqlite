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
        let data = db.query(sql: getSQL(action: "getLocations"))
        
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
        
        return i
        
    }
    
    // MARK: Class Helper
    private func getSQL(action: String) -> String {
    
        var result = String()

        if let path = Bundle.main.path(forResource: "Config", ofType: "plist") {

            // file root is a dictionary
            if let dic = NSDictionary(contentsOfFile: path) as? [String: Any] {
                print ("****** dic = \(dic)")
                result = dic["getLocations"] as! String
            }
        }

        return result
    }
    
}
