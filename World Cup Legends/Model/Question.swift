//
//  Question.swift
//  World Cup Legends
//
//  Created by Valerian on 21/09/22.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let text: String
    let image: String
    let answer: String
    let possibleAnswer1: String
    let possibleAnswer2: String
    let possibleAnswer3: String
    
    init(id: UUID, q: String, img: String, a: String, pa1: String, pa2: String, pa3: String) {
        text = q
        image = img
        answer = a
        possibleAnswer1 = pa1
        possibleAnswer2 = pa2
        possibleAnswer3 = pa3
    }
}
