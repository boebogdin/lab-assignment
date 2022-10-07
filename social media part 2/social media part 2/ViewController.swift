//
//  ViewController.swift
//  social media part 2
//
//  Created by Boe Bogdin on 10/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Action: UISwitch!
    
    @IBOutlet weak var Nightmode: UILabel!
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn == true {
            Nightmode.text = "On"
            view.backgroundColor = .black
        } else {
            Nightmode.text = "Off"
            view.backgroundColor = .yellow
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

