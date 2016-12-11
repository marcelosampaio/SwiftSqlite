//
//  ViewController.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/9/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // database
        let db = SQLiteDB.sharedInstance
        
        let data = db.query(sql: "select cityId, country, city, latitude, longitude, altitude from location order by country, city")
        
        for i in 0..<data.count {
            let row = data[i]
            
            // CityId
            let cityId = row["cityId"] as! Int
            let country = row["country"] as! String
            let city = row["city"] as! String
            
            
            
            print("*** cityId: \(cityId)")
            print("*** country: \(country)")
            print("*** city: \(city)")
            print("----------------------------------")

        }
        
        
        
        
//        if let city = row["city"] {
//            print ("**** city: \(city)     -> count: \(data.count)")
//            
//        }
        
    }




}

