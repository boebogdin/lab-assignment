//
//  ViewController.swift
//  2.9
//
//  Created by Boe Bogdin on 9/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBAction func keyboardReturnTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
            label.text = text
        }
    }
    

    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
            label.text = text
        }
    }
    
    
    @IBAction func respondToGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped")
        }
    
    @IBAction func SwitchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("We on the lights")
        } else {
            print("We are going off lights")
        }
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        print(sender.value)
    }
    
    
}

