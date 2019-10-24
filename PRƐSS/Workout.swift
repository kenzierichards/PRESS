//
//  Workout.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 10/16/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import Foundation 

class Workout{
   
    // array of lifts
    var lifts: [String] = []
    var dateCompleted: Date
    
    //init
    init(date: Date){
        self.dateCompleted = date
    }
    

    func getDate() -> Date {
        return dateCompleted
    }
    
    //sendToDB(user, dateTime, lifts[])
}
