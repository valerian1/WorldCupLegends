//
//  Level.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

struct Level {
    var levelProgress = 1
    var levelUnlocked = false
    
    mutating func levelUp() {
        levelProgress += 1
        levelUnlocked = true
        print("Level in class \(levelProgress)")
    }
}
