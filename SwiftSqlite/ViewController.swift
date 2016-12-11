//
//  ViewController.swift
//  SwiftSqlite
//
//  Created by Marcelo Sampaio on 12/9/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import UIKit


// database instance
private let db = SQLiteDB.sharedInstance


class ViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // database
        database()
        
    }


    
    // MARK: - Database
    private func database(){
        
        
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
    }

    private func databaseDebug(){
//        let command = db.execute(sql: "create table debug (code text, token text)")
//        if command == 0 {
//            print("error creating table debug")
//        }else{
//            print("create table ok")
//        }
        
//        let command = db.execute(sql: "insert into debug values ('novo2','new2')")
//        print("after insert statmnet command: \(command)")

        
//        let data = db.query(sql: "select code, token from debug")
//        let row = data[0]
//        let code = row["code"] as! String
//        let token = row["token"] as! String
//        
//        print("*** code: \(code)")
//        print("*** token: \(token)")
        

//        let command = db.execute(sql: "drop table debug")
//        print("*** after debug: \(command)")
    }
    
    

}

