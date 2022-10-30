//
//  Gold.swift
//  World Cup Legends
//
//  Created by VLR on 24/09/22.
//

import Foundation

struct InitialGold: Codable {
    var amount = 3
}

class Gold: ObservableObject {
    @Published var goldAmount = InitialGold() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(goldAmount) {
                UserDefaults.standard.set(encoded, forKey: "Gold")
            }
        }
    }
    
    init () {
        if let savedAmount = UserDefaults.standard.data(forKey: "Gold") {
            if let decodedAmount = try? JSONDecoder().decode(InitialGold.self, from: savedAmount) {
                goldAmount = decodedAmount
                return
            }
        }
    }
}
