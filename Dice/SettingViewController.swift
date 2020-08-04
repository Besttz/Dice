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
    var sound = true
    var soundManager = SoundManager()
    var dices = [Dice]()
    
    @IBOutlet weak var diceNumSeg: UISegmentedControl!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceNumSeg.selectedSegmentIndex = diceNum - 1
        soundSwitch.isOn = sound
    }
    
    @IBAction func changeNumDice(_ sender: UISegmentedControl) {
        diceNum = sender.selectedSegmentIndex + 1
    }
    
    @IBAction func soundSwitchTapped(_ sender: UISwitch) {
        sound = sender.isOn
        if sound {
            soundManager.playSound()
        }
    }
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "done" {
            let homeView = segue.destination as! ViewController
            homeView.diceNum = diceNum
            homeView.sound = sound
            
            if diceNum == 4 {
                homeView.dice.setTitle("🐔", for: .normal)
                homeView.textLabel.text = "Zhenyu"
            } else if diceNum > 2 {
                homeView.textLabel.text = "\(diceNum) Dices"
            } else if diceNum != 2 {
                homeView.textLabel.text = "\(diceNum) Dice"
            }
        } else if segue.identifier == "history" {
            let homeView = segue.destination as! HistoryViewController
            // Deliery parameters
            homeView.dices = dices
        }
    }
    
    
}
