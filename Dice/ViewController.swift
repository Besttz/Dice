//
//  ViewController.swift
//  Dice
//
//  Created by ZhangTommy on 27/7/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func cal(_ sender: Any) {
        let d1 = Int.random(in: 1..<6)
        let d2 = Int.random(in: 1..<6)
        let total = d1+d2
        dice.setTitle(String(total), for: .normal)
        textLabel.text = " \(String(d1)) + \(String(d2))"
    }
}

