//
//  Level.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

class Level {
    var levelProgress = 1
    
    var level1Unlocked = true
    var level2Unlocked = false
    var level3Unlocked = false
    var level4Unlocked = false
    var level5Unlocked = false

    
    func levelUp() {
        levelProgress += 1
        
        if levelProgress == 2 {
            level2Unlocked = true
        } else if levelProgress == 3 {
            level3Unlocked = true
        } else if levelProgress == 4 {
            level4Unlocked = true
        } else if levelProgress == 5 {
            level5Unlocked = true
        }
        
        print("Level in class \(levelProgress)")
    }
}
