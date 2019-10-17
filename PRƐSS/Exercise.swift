//
//  Exercise.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 10/16/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import Foundation

class Exercise{
    var dateCompleted: Date
    //var name: Lift
//    var sets: Int
    var reps: Int
    var weight: Int
    
    init(name: String, reps: Int, weight: Int, date: Date){
        self.name = name
        self.reps = reps
        self.weight = weight
        self.dateCompleted = date
    }
    
    func getName() -> String{
        return name
    }
    
    func getReps() -> Int {
        return reps
    }
    
    func getWeight() -> Int {
        return weight
    }
    
    func getDate() -> Date {
        return dateCompleted
    }
    
    //sendToDB(user, dateTime, Lift, weight, reps)
}
