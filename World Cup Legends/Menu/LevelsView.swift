//
//  Levels.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import SwiftUI

struct LevelsView: View {
    @State var level1 = false
    @State var level2 = false
    @State var level3 = false    
    
    @State var quiz = QuizBrain()
        
    var body: some View {
        VStack {
            Spacer()
            
            if level1 {
                GameOn()
            } else if level2 {
                GameOn()
            } else {
                
                Button {
                    print("level button 1 pressed")

                    startPlayerLevel(playerLevel: "level 1")
                    level1.toggle()
                } label: {
                    Text("Level 1")
                }
                .answerButtonStyle()
                
                Button {
                    
                } label: {
                    Text("Level 2")
                    Image(systemName: "lock.fill")
                }
                .answerButtonStyle()
                
                Button {
                    
                } label: {
                    Text("Level 3")
                    Image(systemName: "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    
                } label: {
                    Text("Level 4")
                    Image(systemName: "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    
                } label: {
                    Text("Level 5")
                    Image(systemName: "lock.fill")
                }
                .answerButtonStyle()

                
            }
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
    
    func startPlayerLevel(playerLevel: String) {
        let playerChoice = playerLevel
        
        if playerChoice == "level 1" {
            quiz.level.levelProgress += 1
            print("quiz level increased by 2")
            quiz.checkLevel()
            print("quiz level checked")
        }

    }
}

struct Levels_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
