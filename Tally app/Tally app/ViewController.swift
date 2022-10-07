//
//  ViewController.swift
//  Tally app
//
//  Created by Boe Bogdin on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Textfield: UITextField!
    
    @IBOutlet var ResetButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var Label: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    @IBAction func plusAction(_ sender: Any) {
        if let input = Int(Textfield.text!) {
            count += input
            Label.text = "\(count)"
        }
        
        Label.text = "\(count)"
    }
    @IBAction func minesAction(_ sender: Any) {
        if let input = Int(Textfield.text!) {
            count -= input
            Label.text = "\(count)"
        }
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        count = 0
        Label.text = String(count)
    }
    
}
