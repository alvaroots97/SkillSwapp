//
//  ViewController.swift
//  SkillSwApp
//
//  Created by Alvaro Alva on 9/27/20.
//

import UIKit

class ViewController: UIViewController {
    // UI References
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailSwitch: UISwitch!
    
    @IBAction func loginButtonAction() {
        // get values from the text field
        let email = emailTextField.text
        let password = passwordTextField.text
        if email == "alvaroalva2017@gmail.com", password == "123456"{
            if emailSwitch.isOn {
                // store values with key in the User Defaults
                storage.set(email, forKey: emailKey)
            } else {
                // delete values with key in the User Defaults
                storage.removeObject(forKey: emailKey)
            }
            performSegue(withIdentifier: "home_segue", sender: nil)
        } else {
            print("NO entry")
        }

    }
    private let emailKey = "email-key"
    private let storage = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  Asign a string in the User Defaults
        if let storedEmail = storage.string(forKey: emailKey) {
            emailTextField.text = storedEmail
            emailSwitch.isOn = true
        } else {
            emailSwitch.isOn = false
        }
        
        
    }


}

