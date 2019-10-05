//
//  ViewController.swift
//  introToXcode
//
//  Created by Maleny on 10/5/19.
//  Copyright © 2019 Maleny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.red
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        print("hi")
        myView.backgroundColor = .cyan
        myButton.setTitle("👽", for: .normal)
    }
    
    
}

