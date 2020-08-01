//
//  SettingViewController.swift
//  Dice
//
//  Created by ZhangTommy on 1/8/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
