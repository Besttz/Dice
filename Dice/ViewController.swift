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
    
    var diceNum = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
    }
    
    
    @IBAction func cal(_ sender: Any) {
        var diceResults = [Int]()
        var total = 0
        var text = ""
        for i in 0...diceNum-1 {
            diceResults.append(Int.random(in: 1..<6))
            total += diceResults[i]
            text += " \(diceResults[i])"
        }
        dice.setTitle(String(total), for: .normal)
        textLabel.text = text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let homeView = segue.destination as! SettingViewController
        homeView.diceNum = diceNum
    }
}

