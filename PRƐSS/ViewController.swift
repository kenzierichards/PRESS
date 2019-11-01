//
//  ViewController.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 9/27/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import UIKit
import FileProvider
import Foundation

class ViewController: UIViewController {

    // log in page
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    // athlete register
    @IBOutlet weak var txtEmailAthlete: UITextField!
    
    @IBOutlet weak var txtUsernameAthlete: UITextField!
    
    @IBOutlet weak var txtPasswordAthlete: UITextField!
    
    
    @IBOutlet weak var txtFirstNameAthlete: UITextField!
    
    @IBOutlet weak var txtLastNameAthlete: UITextField!
    
    // coach register
    @IBOutlet weak var txtEmailCoach: UITextField!
    
    @IBOutlet weak var txtUsernameCoach: UITextField!
    
    @IBOutlet weak var txtPasswordCoach: UITextField!
    
    
    @IBOutlet weak var txtFirstNameCoach: UITextField!
    
    @IBOutlet weak var txtLastNameCoach: UITextField!
    
    
    var topLevel : [String? : String?] = [ "users" : "", "lifts" : "", "workouts" : ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //var topLevel : [String? : String?] = [:]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAthleteRegister(_ sender: UIButton) {
        
        let email = txtEmailAthlete.text
        let username = txtUsernameAthlete.text
        let password = txtPasswordAthlete.text
        let firstName = txtFirstNameAthlete.text
        let lastName = txtLastNameAthlete.text
    }
    
    
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        var username: String? = txtUsername.text
        var password: String? = txtPassword.text
        
        //Check in DB if this user exists
    }
    
    
    @IBAction func btnAthleteRegisterPressed(_ sender: UIButton) {
        let email: String? = txtEmailAthlete.text
        let username: String? = txtUsernameAthlete.text
        let password: String? = txtPasswordAthlete.text
        let firstName: String? = txtFirstNameAthlete.text
        let lastName: String? = txtLastNameAthlete.text
        
        
    
        var userDictionary : [String?: String?] = [
            "username" : username,
            "firstName" : firstName,
            "lastName" : lastName,
            "password" : password,
            "email" : email
        ]
        
        var jsString : String = ""
        jsString += ",\n{"
        
        
        for (key,val) in userDictionary {
            jsString = jsString + "\n\"" + (key ?? "key")
            jsString = jsString + "\" : \"" + (val ?? "value") + "\",\n"
        }
        jsString += "},\n"
        //print(jsString)
        var oldString : String = Array(topLevel)[0].value ?? ""
        oldString += jsString
        topLevel.updateValue(oldString, forKey: "users")
        
        for (key, val) in topLevel{
            print((key ?? "") + " - " + (val ?? ""))
        }
          
        fileWriteTopLevel()
          
    }
    
    
  
    func fileWriteTopLevel(){
        var str = "{\n"
         for (key, val) in topLevel{
            str += (key ?? "") + " : [\n"
            str += val ?? ""
            str += "],\n"
        }

        str.remove(at: str.index(before: str.endIndex))
        str.remove(at: str.index(before: str.endIndex))

        let file = "/Volumes/SSD/PRƐSS/git/PRESS/js.json"
        do{
            try str.write(toFile: file, atomically: false, encoding: String.Encoding.utf8)
        }
        catch let error as NSError{
            // add logging
            var a = 1
        }
//
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

        
    
    @IBAction func btnCoachRegisterPressed(_ sender: UIButton) {
        
        let email = txtEmailCoach.text
        let username = txtUsernameCoach.text
        let password = txtPasswordCoach.text
        let firstName = txtFirstNameCoach.text
        let lastName = txtLastNameCoach.text
    }
    
}

