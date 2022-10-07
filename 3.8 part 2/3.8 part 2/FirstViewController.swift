//
//  FirstViewController.swift
//  3.8 part 2
//
//  Created by Boe Bogdin on 9/19/22.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("firstviewController - View Did load!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("firstviewController - View will Appear!")
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        print("firstViewController - view Did Appe!")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("firstViewController - View did Disapper!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("firstViewController - View did Disapper!")
    }
}
