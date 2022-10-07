//
//  ViewController.swift
//  1.8
//
//  Created by Boe Bogdin on 9/4/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var greetingLabelField: UILabel!
    
    
    func buttonPressed(_ sender: UIButton) {
        greetingLabelField.text = "Hello" + nameTextField.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
