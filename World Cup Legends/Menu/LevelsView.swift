//
//  Levels.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import SwiftUI

struct LevelsView: View {
    @State var gameOn = false
    
    @State var quiz = QuizBrain()
    var level = LevelsBrain()
        
    var body: some View {
        VStack {
            Spacer()
            
            if gameOn {
                GameOn()
            } else {
                
                Button {
                    print("level button 1 pressed")
                    startPlayerLevel(playerLevel: "level 1")
                } label: {
                    Text("Level 1")
                }
                .answerButtonStyle()
                
                Button {
                    print("level button 2 pressed")
                    startPlayerLevel(playerLevel: "level 2")
                } label: {
                    Text("Level 2")
                    Image(systemName: level.playerLevel.level2Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()
                
                Button {
                    print("level button 3 pressed")
                    startPlayerLevel(playerLevel: "level 3")
                } label: {
                    Text("Level 3")
                    Image(systemName: level.playerLevel.level3Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    print("level button 4 pressed")
                    startPlayerLevel(playerLevel: "level 4")
                } label: {
                    Text("Level 4")
                    Image(systemName: level.playerLevel.level4Unlocked ? "" : "lock.fill")
                }
                .answerButtonStyle()

                Button {
                    print("level button 5 pressed")
                    startPlayerLevel(playerLevel: "level 5")
                } label: {
                    Text("Level 5")
                    Image(systemName: level.playerLevel.level5Unlocked ? "" : "lock.fill")
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
            level.playerLevel.levelProgress = 1
            playChosenLevel()
            print("quiz level checked > Level 1 chosen")
        } else if playerChoice == "level 2" {
            
            if level.playerLevel.level2Unlocked {
                level.playerLevel.levelProgress = 2
                playChosenLevel()
                print("quiz level checked > Level 2 chosen")
            } else {
                print("You must unlock level 2 first")
            }
            
        } else if playerChoice == "level 3" {
            
            if level.playerLevel.level3Unlocked {
                level.playerLevel.levelProgress = 3
                playChosenLevel()
                print("quiz level checked > Level 3 chosen")
            } else {
                print("You must unlock level 3 first")
            }
            
            
        } else if playerChoice == "level 4" {
            
            if level.playerLevel.level4Unlocked {
                level.playerLevel.levelProgress = 4
                playChosenLevel()
                print("quiz level checked > Level 4 chosen")
            } else {
                print("You must unlock level 4 first")
            }
            
        } else if playerChoice == "level 5" {
            
            if level.playerLevel.level5Unlocked {
                level.playerLevel.levelProgress = 5
                playChosenLevel()
                print("quiz level checked > Level 5 chosen")
            } else {
                print("You must unlock level 5 first")
            }
            
        }
    }
    
    func playChosenLevel() {
        quiz.updateLevel()
        quiz.checkLevel()
        gameOn.toggle()
    }
}

struct Levels_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView()
    }
}
