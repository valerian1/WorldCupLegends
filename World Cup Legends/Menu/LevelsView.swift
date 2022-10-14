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
    @State var level4 = false
    @State var level5 = false
    
    @State var quiz = QuizBrain()
    var level = Level()
        
    var body: some View {
        VStack {
            Spacer()
            
            if level1 {
                GameOn()
            } else if level2 {
                GameOn()
            } else if level3 {
                GameOn()
            } else if level4 {
                GameOn()
            } else if level5 {
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
                    print("level button 2 pressed")
                    startPlayerLevel(playerLevel: "level 1")
                } label: {
                    Text("Level 2")
                    Image(systemName: level.level2Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()
                
                Button {
                    
                } label: {
                    Text("Level 3")
                    Image(systemName: level.level3Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    
                } label: {
                    Text("Level 4")
                    Image(systemName: level.level4Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    
                } label: {
                    Text("Level 5")
                    Image(systemName: level.level5Unlocked ? "" : "lock.fill")
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
            quiz.level.levelProgress = 1
            print("quiz level increased by 2")
            quiz.checkLevel()
            print("quiz level checked")
        } else if playerChoice == "level 2" {
            if level.level2Unlocked {
                quiz.level.levelProgress = 2
                quiz.checkLevel()
            } else {
                return
            }
            
        } else if playerChoice == "level 3" {
            quiz.level.levelProgress = 3
            quiz.checkLevel()
        } else if playerChoice == "level 4" {
            quiz.level.levelProgress = 4
            quiz.checkLevel()
        } else if playerChoice == "level 5" {
            quiz.level.levelProgress = 5
            quiz.checkLevel()
        }

    }
}

struct Levels_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
