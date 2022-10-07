//
//  ViewController.swift
//  3.8 “View Controller Life Cycle”
//
//  Created by Boe Bogdin on 9/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //nameLabel.text = "Hello World"
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func button(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destnation as? SecondViewController {
            destination.label.text = "Hi Bob"
        }
    }
}




