//
//  QuizLevels.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

    // QUESTION EXAMPLE
//        Question(id: UUID(), q: "QUESTION?", img: "photo", a: "answer", pa1: "", pa2: "", pa3: ""),


struct QuizLevels {
    let level1 = [
        Question(id: UUID(), q: "How many times Maradona won the World Cup?", img: "Maradona", a: "1", pa1: "0", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "When Zinedine Zidane won the World Cup?", img: "Zidane", a: "in 1998", pa1: "in 2002", pa2: "in 1996", pa3: "in 2006"),
        Question(id: UUID(), q: "How many times Brazil won the World Cup?", img: "Brazil", a: "5", pa1: "7", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "How many goals did Ronaldo scored in the final in 2002?", img: "Ronaldo", a: "2", pa1: "1", pa2: "3", pa3: "4")
    ].shuffled()
    
    let level2 = [
        Question(id: UUID(), q: "How many times Pele won the World Cup?", img: "Pele", a: "3", pa1: "1", pa2: "4", pa3: "2"),
        Question(id: UUID(), q: "When Ronaldinho won the World Cup?", img: "Ronaldinho", a: "in 2002", pa1: "in 2006", pa2: "in 1998", pa3: "in 2010"),
        Question(id: UUID(), q: "The only goalkeeper to have ever won the ‘Golden Ball’ trophy?", img: "goldenball", a: "Oliver Kahn", pa1: "Bartez", pa2: "Buffon", pa3: "Casillas"),
        Question(id: UUID(), q: "Which team won the tournament under the guidance of a foreign coach?", img: "cup", a: "None", pa1: "Spain", pa2: "England", pa3: "Germany"),
        Question(id: UUID(), q: "Which country outside Europe and South America has won this tournament?", img: "cup", a: "None", pa1: "South Africa", pa2: "Japan", pa3: "Australia"),
        Question(id: UUID(), q: "In the list of highest goal scorers of all time Ronaldo stands?", img: "Ronaldo", a: "2nd", pa1: "1st", pa2: "3rd", pa3: "4th"),
//        Question(id: UUID(), q: "QUESTION?", img: "photo", a: "answer", pa1: "", pa2: "", pa3: ""),


    ].shuffled()
    
    let level3 = [
        Question(id: UUID(), q: "Which team has played the most World Cup games as compared to any other country?", img: "WC1930", a: "Germany", pa1: "Brazil", pa2: "England", pa3: "Uruguay"),
        Question(id: UUID(), q: "Which one is the only team to have played in each and every FIFA World Cup?", img: "WC1930", a: "Brazil", pa1: "Germany", pa2: "Spain", pa3: "Argentina"),
        Question(id: UUID(), q: "The first World Cup held in 1930 was won by?", img: "WC1930", a: "Uruguay", pa1: "Brazil", pa2: "England", pa3: "Argentina"),
    ].shuffled()
    
    let level4 = [
        Question(id: UUID(), q: "The 1994 edition in USA was the first time when 3 points was awarded for a win, instead of?", img: "USA94", a: "2", pa1: "1", pa2: "6", pa3: "5"),
        Question(id: UUID(), q: "Which team scored most goals and defeated El Salvador 10 – 1 in 1982?", img: "Spain82", a: "Hungary", pa1: "Netherlands", pa2: "Italy", pa3: "Germany"),
        Question(id: UUID(), q: "Geoff Hurst of England is the only player to have scored a hat-trick in a final – 1966 against?", img: "hurst", a: "West Germany", pa1: "Argentina", pa2: "Spain", pa3: "France"),
    ].shuffled()
    
    let level5 = [
        Question(id: UUID(), q: "QUESTION?", img: "photo", a: "answer", pa1: "", pa2: "", pa3: ""),
        //        Question(id: UUID(), q: "QUESTION?", img: "photo", a: "answer", pa1: "", pa2: "", pa3: ""),
        //        Question(id: UUID(), q: "QUESTION?", img: "photo", a: "answer", pa1: "", pa2: "", pa3: ""),
    ].shuffled()
}
