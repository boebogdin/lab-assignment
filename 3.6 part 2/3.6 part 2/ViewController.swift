//
//  ViewController.swift
//  3.6 part 2
//
//  Created by Boe Bogdin on 9/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    
    
    @IBOutlet weak var ForgotUsername: UIButton!
    
    @IBOutlet weak var ForgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == ForgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func ForgotusernameBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsername", sender: sender)
    }
    
    @IBAction func ForgotPasswordBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsername", sender: sender)
    }
    @IBOutlet var UsernameError: UILabel!
    
    
    @IBOutlet var PasswordError: UILabel!
    
}

