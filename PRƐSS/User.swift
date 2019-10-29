//
//  User.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 10/16/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import Foundation

class User{
    var userID: String
    var firstName: String
    var lastName: String
    var password: String 
    var email: String
    var coach: Bool
    
    init(userID: String, firstName: String, lastName: String, email: String, coach: Bool, password: String){
        
        self.userID = userID
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.coach = coach
        self.password = password
    }
    
    func makeCoach(){
        coach = true;
    }
    
    func getFullName() -> String {
        return firstName + lastName
    }
    
    func getEmail() -> String {
        return email
    }
    
    func changePassword(newPassword: String){
        password = newPassword
    }
    
    func newUser(_ email: String, _ username: String, _ password: String, _ firstName : String, _ lastName : String){
        
        let newUser = User(userID: username, firstName: firstName, lastName: lastName, email: email, coach: false, password: password)
        
        
    }
}
