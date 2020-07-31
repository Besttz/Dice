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
    
    var diceNum = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }

    @IBAction func changeNumDice(_ sender: UISegmentedControl) {
        diceNum = sender.selectedSegmentIndex + 1
        if diceNum > 2 {
            textLabel.text = "\(diceNum) Dices"
        } else {
            textLabel.text = "\(diceNum) Dice"
        }
        
    }
    
    
    @IBAction func cal(_ sender: Any) {
        let d1 = Int.random(in: 1..<6)
        let d2 = Int.random(in: 1..<6)
        let total = d1+d2
        dice.setTitle(String(total), for: .normal)
        textLabel.text = " \(String(d1)) + \(String(d2))"
    }
}

