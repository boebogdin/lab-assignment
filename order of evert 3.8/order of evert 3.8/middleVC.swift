//
//  middleVC.swift
//  order of evert 3.8
//
//  Created by Boe Bogdin on 9/19/22.
//

import UIKit

class middleVC: UIViewController {

    @IBOutlet weak var middleVCLabel: UILabel!
    
    
//    func addEvent(from: String) {
//        if let existingText = middleVCLabel.text {
//            middleVCLabel.text = "\(existingText)"
//        }
//    }
    
    
    var eventNumber: Int = 1
    func addEvent(from: String) {
    if let actualText = middleVCLabel.text {
        middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidLoad"
        eventNumber += 1
    }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let auctualText = MiddleVCLabel.text {
            MiddleVCLabel.text = "\(auctualText)\nEvent number \(eventNumber) is viewDidDisappear"
        }
    }
}
