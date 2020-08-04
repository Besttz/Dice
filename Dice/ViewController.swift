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
    var sound = true
    var soundManager = SoundManager()
    var index = 1
    var dices = [Dice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
    }
    
    
    @IBAction func cal(_ sender: Any) {
        // Create a new dice and calculate
        dices.append(Dice(index: index, dices: diceNum))
        
        // Change the UI element
        dice.setTitle("\(dices[index-1].total)", for: .normal)
        textLabel.text = dices[index-1].text
        
        // Update the number of dices
        index += 1
        
        // Play Sound
        if sound {
            soundManager.playSound()
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let homeView = segue.destination as! SettingViewController
        // Deliery parameters
        homeView.diceNum = diceNum
        homeView.sound = sound
        homeView.dices = dices
    }
}

