//
//  ViewController.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 9/27/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import UIKit
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        
        
    
        var dictionary : [String?: String?] = [
            "username" : username,
            "firstName" : firstName,
            "lastName" : lastName,
            "password" : password,
            "email" : email
        ]
        
        let file : FileHandle? = FileHandle(forWritingAtPath: "/Users/ryanhebert/Desktop/users.json")
        
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            let decoded = try JSONSerialization.jsonObject(with: jsonData, options: [])
            if let dictFromJSON = decoded as? [String? : String?] {
                file?.write(decoded as! Data)
                print(dictFromJSON)
            }
           file?.closeFile()
        } catch {
            print(error.localizedDescription)
        }
    }

//        file?.closeFile()

        
    
    @IBAction func btnCoachRegisterPressed(_ sender: UIButton) {
        
        let email = txtEmailCoach.text
        let username = txtUsernameCoach.text
        let password = txtPasswordCoach.text
        let firstName = txtFirstNameCoach.text
        let lastName = txtLastNameCoach.text
    }
    
}

