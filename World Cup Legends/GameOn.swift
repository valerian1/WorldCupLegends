//
//  GameOn.swift
//  World Cup Legends
//
//  Created by Valerian on 21/09/22.
//

import SwiftUI

struct GameOn: View {
    // Screens controllers
    @State private var onMenu = false
    @State private var winOrLoose = false
    @State private var playerWon = false
    // In game mode views
    @State private var playerLostMessage = ""
    @State private var playerGold = 100
    @State private var timeRemaining = 145
    @State private var rightOrWrong = "🧐"
    @State private var timeRunning = false
    @State private var nextQuestionTime = 2
    @State private var nextQuestionTimeRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    // Questions
    @State private var questionLabel = ""
    @State private var questionImage = "Maradona"
    // Possible answers
    @State private var correctAnswer = ""
    @State private var fakeAnswer1 = ""
    @State private var fakeAnswer2 = ""
    @State private var fakeAnswer3 = ""
    @State private var answerList = [String]().shuffled()
    var columns: [GridItem] = Array(repeating: GridItem(.fixed(170)), count: 2)
    // Quiz and levels
    @State var quiz = QuizBrain()
    var level = LevelsBrain()
    // Answers counters
    @State var correctAnswers = 0
    @State var wrongAnswers = 0
            
    var body: some View {
        ZStack {
            if onMenu {
                // MENU
                Menu()
            } else if winOrLoose {
                VStack {
                    // LEVEL COMPLETE OR LOST
                    if playerWon {
                        VStack {
                            Spacer()
                            Text("Congrats you qualified")
                            
                            Button {
                                play()
                                print("nextLevel() called, Player level: \(level.playerLevel.levelProgress)")
                                print("nextLevel() called, Player level 2 unlocked: \(level.playerLevel.level2Unlocked)")

                            } label: {
                                Text("Continue")
                            }
                            .answerButtonStyle()
                            Spacer()
                        }
                        .background(
                            Image("background")
                                .resizable()
                                .scaledToFill()
                        )
                        .ignoresSafeArea()
                    } else {
                        VStack {
                            Spacer()
                            Text(playerLostMessage)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding()
                            
                            Button {
                                restart()
                            } label: {
                                Text("Play Again")
                            }
                            .answerButtonStyle()
                            .padding()
                            Spacer()
                        }
                        .background(
                            Image("startScreen")
                                .resizable()
                                .scaledToFill()
                        )
                        .ignoresSafeArea()
                    }
                }
            } else {
                // GAME ON
                VStack(alignment: .center, spacing: 10) {
                    Spacer()
                    // Points, Time remaining, menu
                    HStack(alignment: .center, spacing: 70) {
                        HStack {
                            Image("gold2")
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text("\(playerGold)")
                                .fontWeight(.bold)
                        }
                        
                        Text("Time: \(timeRemaining)")
                            .foregroundColor(.orange)
                            .fontWeight(.heavy)
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(.black)
                            .cornerRadius(50)
                            .onReceive(timer) { _ in
                                if timeRemaining > 0 && timeRunning {
                                    timeRemaining -= 1
                                    
                                    if timeRemaining == 0 {
                                        playerLoose()
                                    }
                                    
                                    if nextQuestionTimeRunning {
                                        nextQuestionTime -= 1
                                        if nextQuestionTime == 0 {
                                            updateQuestion()
                                        }
                                    }
                                } else {
                                    timeRunning = false
                                }
                            }
                        

                        Button {
                            onMenu.toggle()
                        } label: {
                            Text("Menu")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                    }
                
                    // Question
                    Image("\(questionImage)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 360, height: 360)
                    
                    Text(rightOrWrong)
                    
                    VStack {
                        Text(questionLabel)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .font(.largeTitle)
                    .padding()
                    // Answer buttons
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(answerList, id: \.self) { answer in
                            Button {
                                answerButtonPressed(button: answer)
                            } label: {
                                Text(answer)
                                    .answerButtonStyle()
                            }
                        }
                    }
                    Spacer()
                }
                .background(.white)
                .onAppear {
                    play()
                    print("On appear")
                    print("Player level in LevelsBrain: \(level.playerLevel.levelProgress)")
                    print("Level 2 unlocked in LevelsBrain: \(level.playerLevel.level2Unlocked)")
                }
                Spacer()
            }
        }
    }
    

    func answerButtonPressed(button: String) {
        let userAnswer = button
        let userGotItRight = quiz.checkAnswer(userAnswer)
        
        if userGotItRight {
            playerGold += 1
            correctAnswers += 1
            rightOrWrong = "Correct 👏"
                                    // Must add level requirements ( if  correctAnswers == levelRequirements { } )
            if correctAnswers == 3 && level.playerLevel.levelProgress == 1 {
                level.levelUp()
                print("levelUp(). player level: \(level.playerLevel.levelProgress)")
                winOrLoose = true
                playerWon = true
            }
        } else {
            playerGold -= 1
            if playerGold < 0 {
                wrongAnswers += 1
                if wrongAnswers == 1 {
                    playerLoose()
                }
            }
            rightOrWrong = "Wrong 😱"
        }
        nextQuestionTimeRunning.toggle()
        print("answer button pressed")
}
    
    func askQuestion() {
        questionLabel = quiz.getQuestionText()
        questionImage = quiz.getQuestionImage()
        correctAnswer = quiz.getCorrectAnswer()
    }
    
    func generateAnswers()  {
        fakeAnswer1 = quiz.getFakeAnswers().answer1
        fakeAnswer2 = quiz.getFakeAnswers().answer2
        fakeAnswer3 = quiz.getFakeAnswers().answer3
        answerList = [correctAnswer, fakeAnswer1, fakeAnswer2, fakeAnswer3]
        answerList.shuffle()
    }
    
    func updateQuestion() {
        nextQuestionTimeRunning = false
        nextQuestionTime = 2
        quiz.nextQuestion()
        askQuestion()
        generateAnswers()
        rightOrWrong = "🧐"
    }
    
    func play() {
        quiz.updateLevel()
        quiz.checkLevel()
        
        nextQuestionTimeRunning = false
        rightOrWrong = "🧐"
        timeRemaining = 145
    
        answerList.shuffle()
        askQuestion()
        generateAnswers()
        timeRunning.toggle()
        winOrLoose = false

        print("play(). level progress in Level class: \(level.playerLevel.levelProgress)")
    }
    
    // Play again if player lost
    func restart() {
        nextQuestionTimeRunning = false
        rightOrWrong = "🧐"
        timeRemaining = 230
        playerGold = 3
        answerList.shuffle()
        askQuestion()
        generateAnswers()
        timeRunning.toggle()
        winOrLoose = false
    }
    
    func playerLoose() {
        if timeRemaining == 0 {
            playerLostMessage = "You ran out of time, try again"
        } else {
            playerLostMessage = "You didn’t qualify, try again"
        }
        winOrLoose = true
        playerWon = false
    }
}


// View Modifiers
struct AnswerButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 170, height: 60)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(10)
            .font(.title)
            .padding(6)
    }
}

extension View {
    func answerButtonStyle() -> some View {
        modifier(AnswerButtonStyle())
    }
}

struct GameOn_Previews: PreviewProvider {
    static var previews: some View {
        GameOn()
    }
}
