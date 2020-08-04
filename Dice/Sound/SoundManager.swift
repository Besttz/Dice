//
//  SoundManager.swift
//  Dice
//
//  Created by ZhangTommy on 4/8/20.
//  Copyright © 2020 Tommy Zhang. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    
    
    func playSound()  {
        
        
        if let path = Bundle.main.path(forResource: "ding", ofType: ".wav") {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:  URL(fileURLWithPath: path) )
                audioPlayer?.play()
            } catch  {
                print("Couldn't create this audio player")
                return
            }
            
        } else {
            return
        }
        
        
    }
}
