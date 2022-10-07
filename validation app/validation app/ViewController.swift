//
//  ViewController.swift
//  validation app
//
//  Created by Boe Bogdin on 10/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var forgotemailbutton: UIButton!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var emailError: UILabel!
    
    @IBOutlet weak var passwordError: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetForm()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        if sender == forgotemailbutton {
            segue.destination.navigationItem.title = "Forgot EmailAdress"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = emailTF.text
        }
    }
    
    func resetForm() {
        loginButton.isEnabled = false
        
        emailError.isHidden = false
        passwordError.isHidden = false
        
        emailError.text = "Required"
        passwordError.text = "Required"
        
        emailTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotemailaction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotEmailAddressorPassword?", sender: forgotemailbutton)
    }
    
    @IBAction func forgotpasswordaction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotEmailAddressorPassword", sender: forgotPasswordButton)
    }
    
    @IBAction func emailChanged(_ sender: Any) {
        if let email = emailTF.text {
            if let errorMessage = invalidEmailNumber(email) {
                emailError.text = errorMessage
                emailError.isHidden = false
            } else {
                emailError.isHidden = true
            }
        }
        checkForValidForm()
    }
    @IBAction func passwordChanged(_ sender: Any) {
        if let password = passwordTF.text {
            if let errorMessage = invalidPasswordNumber(password) {
                passwordError.text = errorMessage
                passwordError.isHidden = false
            }else{
                passwordError.isHidden = true
            }
            
            checkForValidForm()
        }
        
        func invalidPasswordNumber(_ value: String) -> String? {
            if value.count < 8 {
                return "Password Must be at least 8 characters"
            }
            if containsDigit(value) {
                return "Password must contain at least 1 digit"
            }
            if containsLowerCase(value) {
                return "Password must contain at least 1 lowercase character"
            }
            if containsUpperCase(value) {
                return "Password must contain at least 1 upperCase character"
            }
            return nil
        }
    }
    
    func invalidEmailNumber(_ value: String) -> String? {
        let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        if !predicate.evaluate(with: value) {
            return "Invalid Email Address"
        }
        return nil
    }
    func containsDigit(_ value: String) -> Bool {
        let regularExpression = ".*[0-9]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        return !predicate.evaluate(with: value)
    }
    func containsLowerCase(_ value: String) -> Bool {
        let regularExpression = ".*[a-z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        return !predicate.evaluate(with: value)
    }
    func containsUpperCase(_ value: String) -> Bool {
        let regularExpression = ".*[A-Z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        return !predicate.evaluate(with: value)
        
        checkForValidForm()
    }
            
    func checkForValidForm() {
        if emailError.isHidden && passwordError.isHidden {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
    func loginAction(_ sender: Any) {
        resetForm()
    }
}
