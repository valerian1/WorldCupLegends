//
//  Level.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

class Level: ObservableObject {
    @Published var levelProgress = 1
    
    func levelUp() {
        levelProgress += 1
        print("Level in class \(levelProgress)")
    }
}
