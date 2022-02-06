//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballUIImageView: UIImageView!
    @IBOutlet weak var AskButtonOutlet: UIButton!
    let ballArray = [#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball2")]
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            AskButtonOutlet.layer.cornerRadius = 20.0
            AskButtonOutlet.layer.masksToBounds = true
        }

    @IBAction func askButtonTupped(_ sender: Any) {
        ballUIImageView.image = ballArray.randomElement()
    }
    
}

