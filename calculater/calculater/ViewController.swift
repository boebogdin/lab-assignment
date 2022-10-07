//
//  ViewController.swift
//  calculater
//
//  Created by Boe Bogdin on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var calcButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in calcButton {
            button.layer.cornerRadius = button.frame.size.height / 2 ;

    }
}

