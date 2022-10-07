//
//  ViewController.swift
//  3.7 Tab Bar Controllers
//
//  Created by Boe Bogdin on 9/15/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "Alert"
        tabBarItem.badgeColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recrated.
    }

}

