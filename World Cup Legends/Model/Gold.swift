//
//  Gold.swift
//  World Cup Legends
//
//  Created by VLR on 24/09/22.
//

import Foundation

class Gold: ObservableObject {
    @Published var goldAmount = 3
    
    func buy20golds() {
        goldAmount += 20
        print("bought 20 gold")
        print("golds in class \(goldAmount)")
    }
}
