//
//  ViewController.swift
//  calculater part 2
//
//  Created by Boe Bogdin on 9/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    // firstNumber secondNumber operator have ResultNumber numAfterResult
    
    
    var firstNum: String = "";
    
    var operation: String = "";
    
    var secondNum: String = "";
    
    var haveResult: Bool = false;
    
    var resultNumber: String = "";
    
    var numAfterResult: String = "";
    
    @IBAction func add(_ sender: Any) {
        operation = "+";
    }
    @IBAction func subtract(_ sender: Any) {
        operation = "-";
    }
    @IBAction func Times(_ sender: Any) {
        operation = "x";
    }
    @IBAction func Divide(_ sender: Any) {
        operation = "/";
    }
    @IBAction func Equals(_ sender: Any) {
        resultNumber = String(doOperation())
        numOnScreen.text = resultNumber;
        numAfterResult = "";
        let numArray = resultNumber.components(separatedBy:".")
        print(numArray)
        if numArray[1] == "0" {
            numOnScreen.text = numArray[0]
        }
        else {
            numOnScreen.text = resultNumber;
        }
        numAfterResult = "";
    }
    
    
    
    
    
    @IBOutlet weak var numOnScreen: UILabel!
    
    @IBAction func numPressed(_ sender: UIButton) { // "" + "1" = "1"
        if operation == "" {
            firstNum += String(sender.tag);
            numOnScreen.text = firstNum;
        }
        else if operation != "" && !haveResult {
            secondNum += String(sender.tag);
            numOnScreen.text = secondNum;
        }
        else if operation != "" && haveResult{
            numAfterResult += String(sender.tag)
            numOnScreen.text = numAfterResult;
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        firstNum = "";
        
        operation = "";
        
        secondNum = "";
        
        haveResult = false;
        
        resultNumber = "";
        
        numAfterResult = "";
        
        numOnScreen.text = "0";
    }
    
    
    @IBOutlet var calcButton: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for button in calcButton {
            button.layer.cornerRadius = button.frame.size.height / 2 ;
            button.titleLabel?.font = UIFont(name: "System", size: 24)
        }
        
    }
    func doOperation() -> Double {
        if operation == "+" {
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! + Double(secondNum)!
            }
            else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        }
        else if operation == "-" {
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! - Double()
            }
        }
        else if operation == "x" {
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! * Double(secondNum)!
            }
            else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        }
        else if operation == "/" {
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! / Double()
            }
            return 0;
        } else {
            return 0.0
        }
        return 0
    }
}

