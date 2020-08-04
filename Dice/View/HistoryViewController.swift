//
//  HistoryViewController.swift
//  Dice
//
//  Created by ZhangTommy on 4/8/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    var dices = [Dice]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set self as the delegate and datasource
        tableView.delegate = self
        tableView.dataSource = self
        
//        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Returm the number of dices
        return dices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as! HistoryTableViewCell
        
        // Customize
        cell.totalLabel.text = String(dices[indexPath.row].total)
        cell.textL.text = dices[indexPath.row].text
        cell.timeLabel.text = dices[indexPath.row].time
        // Return the Cell
        return cell
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
