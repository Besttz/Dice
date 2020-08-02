//
//  SettingViewController.swift
//  Dice
//
//  Created by ZhangTommy on 1/8/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    var diceNum = 2
    @IBOutlet weak var diceNumSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceNumSeg.selectedSegmentIndex = diceNum - 1
    }

    @IBAction func changeNumDice(_ sender: UISegmentedControl) {
        diceNum = sender.selectedSegmentIndex + 1
    }

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let homeView = segue.destination as! ViewController
        homeView.diceNum = diceNum
        
        if diceNum == 4 {
            homeView.dice.setTitle("🐔", for: .normal)
            homeView.textLabel.text = "Zhenyu"
        } else if diceNum > 2 {
            homeView.textLabel.text = "\(diceNum) Dices"
        } else if diceNum != 2 {
            homeView.textLabel.text = "\(diceNum) Dice"
        }
    }


}
