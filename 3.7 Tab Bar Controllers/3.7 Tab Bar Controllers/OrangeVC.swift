//
//  OrangeVC.swift
//  3.7 Tab Bar Controllers
//
//  Created by Boe Bogdin on 9/15/22.
//

import UIKit

class OrangeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.badgeValue = "Orange Alert"
        tabBarItem.badgeColor = .gray
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resourses tht can be recreated.
    }
    

}
