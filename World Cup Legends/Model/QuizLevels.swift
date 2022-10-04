//
//  QuizLevels.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

struct QuizLevels {
    let level1 = [
        Question(id: UUID(), q: "How many times Maradona won the World Cup?", img: "Maradona", a: "1", pa1: "0", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "When Zinedine Zidane won the World Cup?", img: "Zidane", a: "in 1998", pa1: "in 2002", pa2: "in 1996", pa3: "in 2006"),
        Question(id: UUID(), q: "How many times Brazil won the World Cup?", img: "Brazil", a: "5", pa1: "7", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "How many goals did Ronaldo scored in the final in 2002?", img: "Ronaldo", a: "2", pa1: "1", pa2: "3", pa3: "4")
    ].shuffled()
    
    let level2 = [
        Question(id: UUID(), q: "How many times Pele won the World Cup?", img: "Pele", a: "3", pa1: "1", pa2: "4", pa3: "2"),
        Question(id: UUID(), q: "When Ronaldinho won the World Cup?", img: "Ronaldinho", a: "in 2002", pa1: "in 2006", pa2: "in 1998", pa3: "in 2010")
    ].shuffled()
}



