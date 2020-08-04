//
//  File.swift
//  Dice
//
//  Created by ZhangTommy on 4/8/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import Foundation

class Dice {
    var time:time_t
    var index:Int
    var dices:Int
    var value:[Int]
    var total:Int
    var text:String
    
    init(index:Int, dices:Int) {
        self.index = index
        self.dices = dices
        time = 0
        total = 0
        value = [Int]()
        text = "\(index):"
        
        for i in 0...dices-1 {
            value.append(Int.random(in: 1..<6))
            total += value[i]
            text += " \(value[i])"
        }

    }
    
}
