//
//  ViewController.swift
//  2.7
//
//  Created by Boe Bogdin on 9/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLabel.textColor = .blue
    }

    @IBAction func changeText(_ sender: UIButton) {
        myLabel.text = "World"
    }
    
}

