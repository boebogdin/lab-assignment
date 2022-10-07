//
//  ViewController.swift
//  Unit 3 Project: Personality Quiz
//
//  Created by Boe Bogdin on 9/27/22.
//

import UIKit

class IntroVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func StartQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue) {}
    
}
