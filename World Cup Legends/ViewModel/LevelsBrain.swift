//
//  LevelsBrain.swift
//  World Cup Legends
//
//  Created by VLR on 14/10/22.
//

import Foundation

class LevelsBrain: ObservableObject {
    let maxLevel = 5
    
    @Published var playerLevel = Level() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(playerLevel) {
                UserDefaults.standard.set(encoded, forKey: "PlayerLevel")
            }
        }
    }

    init () {
        if let savedLevel = UserDefaults.standard.data(forKey: "PlayerLevel") {
            if let decodedLevel = try? JSONDecoder().decode(Level.self, from: savedLevel) {
                playerLevel = decodedLevel
                return
            }
        }
    }

    func levelUp() {
        
        guard playerLevel.levelProgress < maxLevel else {
            return print("You've reached maximum level")
        }
        
        playerLevel.levelProgress += 1

        if playerLevel.levelProgress == 2 {
            playerLevel.level2Unlocked = true
            print("levelUp() Level 2 unlocked: \(playerLevel.level2Unlocked)")
        }
        if playerLevel.levelProgress == 3 {
            playerLevel.level3Unlocked = true
            print("levelUp() Level 3 unlocked: \(playerLevel.level3Unlocked)")
        }
        if playerLevel.levelProgress == 4 {
            playerLevel.level4Unlocked = true
            print("levelUp() Level 4 unlocked: \(playerLevel.level4Unlocked)")
        }
        if playerLevel.levelProgress == 5 {
            playerLevel.level5Unlocked = true
            print("levelUp() Level 5 unlocked: \(playerLevel.level5Unlocked)")
        }

        print("levelUp() player level is: \(playerLevel.levelProgress)")
    }
    
    func resetLevels() {
        playerLevel.level2Unlocked = false
        playerLevel.level3Unlocked = false
        playerLevel.level4Unlocked = false
        playerLevel.level5Unlocked = false
    }
}

