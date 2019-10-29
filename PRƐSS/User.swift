//
//  User.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 10/16/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import Foundation

class User : Decodable{
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
    
//    func changePassword(newPassword: String){
//        password = newPassword
//    }
    
    func newUser(_ email: String, _ username: String, _ password: String, _ firstName : String, _ lastName : String, _ yea: Int){
        
        let newUser = User(userID: username, firstName: firstName, lastName: lastName, email: email, coach: false, password: password)
        
        
        var dictionary : [String: String] = [
            "username" : userID,
            "firstName" : firstName,
            "lastName" : lastName,
            "password" : password,
            "email" : email
        ]
        
        let file: FileHandle? = FileHandle(forWritingAtPath: "document.json")
        
        do {
            if let jsonData = try JSONSerialization.data(withJSONObject: "document", options: .init(rawValue: 0)) as? Data {
                print(NSString(data: jsonData, encoding: 1)!)
                file?.write(jsonData)
            }
        }
        catch {
            
        }
        file?.closeFile()
        //file?.write(dictionary)
        
        //print(NSString(data: jsonData, encoding: 1)!)
        
    
    }
}






   //let fileName = "document"
//        let url = Bundle.main.url(forResource: fileName, withExtension: "json")
//
//
//
////        var fileS : URL = "https://github.com/kenzierichards/PRESS/blob/master/document.json"
////
////
//        let decoder = JSONDecoder()
//        let data = try Data(contentsOf: <#T##URL#>)
//        try decoder.decode(User.self, from: data)
