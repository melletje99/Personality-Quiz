//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Wessel Mel on 12/11/2018.
//

import Foundation

var questionIndex = 0

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: DeviceType
}

enum ResponseType {
    case single, multiple, ranged
}

enum DeviceType: Character {
    case iPhone = "📱", watch = "⌚️", macbook = "💻", mac = "🖥"
    
    var definition: String {
        switch self {
        case .iPhone:
            return "You are a social person. You like to connect with people via the phone"
        case .watch:
            return "You are a very sportive person. You enjoy working out in all different ways"
        case .macbook:
            return "You are a worky person, but like to go out whenever you can."
        case .mac:
            return "You are a workaholic that, want to work. But when you are done for the day you can leave your work behind at the office."
        }
    }
}

var questions: [Question] = [
    Question(text: "Which device do you use the most?",
             type: .single,
             answers: [
        Answer(text: "iPhone", type: .iPhone),
        Answer(text: "Watch", type: .watch),
        Answer(text: "Macbook", type: .macbook),
        Answer(text: "Mac", type: .mac)]),
    
    Question(text: "What do you do the most?",
             type: .multiple,
             answers: [
        Answer(text: "Working Out", type: .watch),
        Answer(text: "Working", type: .macbook),
        Answer(text: "Netflix and Chill", type: .mac),
        Answer(text: "Connecting with Friends", type: .iPhone)]),
    
    Question(text: "How much do you use your device for work?",
             type: .ranged,
             answers: [
        Answer(text: "Never", type: .watch),
        Answer(text: "Sometimes", type: .iPhone),
        Answer(text: "A lot", type: .mac),
        Answer(text: "Always", type: .macbook)])
]
