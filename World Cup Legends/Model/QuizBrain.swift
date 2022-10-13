//
//  QuizBrain.swift
//  World Cup Legends
//
//  Created by Valerian on 21/09/22.
//

import Foundation

struct QuizBrain {
    
    var quiz = QuizLevels().level1
    var level = Level()
    
    var questionNumber = 0
    
    mutating func checkLevel() {
        questionNumber = 0
        
        if level.levelProgress == 1 {
            quiz = QuizLevels().level1
        } else if level.levelProgress == 2 {
            quiz = QuizLevels().level2
        }        
    }
    
    func checkCurrentLevel() -> (Int, Bool) {
        return (level.levelProgress, level.levelUnlocked)
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQuestionImage() -> String {
        return quiz[questionNumber].image
    }
    
    func getCorrectAnswer() -> String {
        return quiz[questionNumber].answer
    }
    
    mutating func getFakeAnswers() -> (answer1: String, answer2: String, answer3: String) {
        return (quiz[questionNumber].possibleAnswer1, quiz[questionNumber].possibleAnswer2, quiz[questionNumber].possibleAnswer3)
    }
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            print("Out of questions")
        }
    }
}
