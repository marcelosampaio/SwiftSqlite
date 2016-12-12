//
//  ViewController.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/9/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import UIKit



// database instance
let db = SQLiteDB.sharedInstance
private var database = Database()

class ViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // database
        prepareDatabase()
        
    }


    
    // MARK: - Database
    private func prepareDatabase() {

        let data = database.querySql("select cityId, country, city, latitude, longitude, altitude from location order by country, city")

        
        
//        let data = db.query(sql: "select cityId, country, city, latitude, longitude, altitude from location order by country, city")

        for item in data {
            let locationRow = item as! LocationRow
            
            let city = locationRow.city
            let country = locationRow.country
            
            print("*** country: \(country)")
            print("*** city: \(city)")

            
        }
        
    }


}



