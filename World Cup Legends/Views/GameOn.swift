
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
    // While playing views
    @StateObject var playerGold = Gold()
    @State private var playerResultMessage = ""
    @State private var timeRemaining = 90
    @State private var rightOrWrong = "🧐"
    @State private var timeRunning = false
    @State private var nextQuestionTime = 2
    @State private var nextQuestionTimeRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    // Question
    @State private var questionLabel = ""
    @State private var questionImage = "Maradona"
    // Answers
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
        VStack {
            if onMenu {
                Menu()
            } else if winOrLoose {
                VStack {
                    if playerWon {
                        VStack {
                            Spacer()
                            Text(playerResultMessage)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                                .padding(10)
                                .background(.green)
                                .cornerRadius(10)
                            
                            Button {
                                play()
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
                            Text(playerResultMessage)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                                .padding(10)
                                .background(.orange)
                                .cornerRadius(10)
                                .fixedSize(horizontal: false, vertical: true)
                                .cornerRadius(10)
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
                            Image("background")
                                .resizable()
                                .scaledToFill()
                        )
                        .ignoresSafeArea()
                    }
                }
            } else {
                // GAME ON
                VStack(alignment: .center, spacing: 2) {
                    Spacer()
                    
                    // Points, Time remaining, menu
                    Group {
                        Spacer()
                        
                        HStack(alignment: .top, spacing: 70) {
                            HStack {
                                Image("gold2")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                Text("\(playerGold.goldAmount.amount)")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            
                            Text("Time: \(timeRemaining)")
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
//                                .frame(width: 100, height: 35, alignment: .center)
//                                .background(.black)
//                                .cornerRadius(60)
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
                                MenuButton()
                            }
                            .foregroundColor(.black)
                            .padding(7)
                        }
                        .padding(.top, 15)
                    }
                    
                    Spacer()
                    
                    Group {
                        GeometryReader { geo in
                            Image("\(questionImage)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.9)
                                .frame(width: geo.size.width, height: geo.size.height)
                        }
                    }
                    
                    Group {
                        VStack {
                            Text(questionLabel)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .font(.largeTitle)
                        .padding()
                        
                        Text(rightOrWrong)
                            .font(.title)
                            .bold()
                    }
                    
                    Group {
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
                }
                .background(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .onAppear {
                    
                    play()
                    
                }
            }
        }
    }
    
    
    func answerButtonPressed(button: String) {
        let userAnswer = button
        let userGotItRight = quiz.checkAnswer(userAnswer)
        
        if userGotItRight {
            correctAnswers += 1
            rightOrWrong = "Correct 👏"
            
            if correctAnswers == 5 && level.playerLevel.levelProgress < 5 {
                playerQualified()
            } else {
                if correctAnswers == 5 {
                    playerResultMessage = "Congrats quiz complete 🥳🥇🏆"
                    winOrLoose = true
                    playerWon = true
                }
            }
        } else {
            playerGold.goldAmount.amount -= 1
            if playerGold.goldAmount.amount < 0 {
                wrongAnswers += 1
                if wrongAnswers == 1 {
                    playerLoose()
                }
            }
            rightOrWrong = "Wrong 😱"
        }
        nextQuestionTimeRunning.toggle()
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
        timeRemaining = 90
        correctAnswers = 0
        wrongAnswers = 0
        
        answerList.shuffle()
        askQuestion()
        generateAnswers()
        timeRunning.toggle()
        winOrLoose = false
    }
    
    // Play again if player lost
    func restart() {
        if playerGold.goldAmount.amount <= 0 {
            playerGold.goldAmount.amount = 3
        }
        nextQuestionTimeRunning = false
        rightOrWrong = "🧐"
        timeRemaining = 90
        answerList.shuffle()
        askQuestion()
        generateAnswers()
        timeRunning.toggle()
        winOrLoose = false
    }
    
    func playerQualified() {
            playerResultMessage = "Congrats you qualified"
            level.levelUp()
            playerGold.goldAmount.amount += 3
            winOrLoose = true
            playerWon = true
    }
    
    func playerLoose() {
        if timeRemaining == 0 {
            playerResultMessage = "You ran out of time"
        } else {
            playerResultMessage = "You didn’t qualify"
        }
        winOrLoose = true
        playerWon = false
    }
}

struct GameOn_Previews: PreviewProvider {
    static var previews: some View {
        GameOn()
    }
}
