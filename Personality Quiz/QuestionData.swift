//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Wessel Mel on 12/11/2018.
//

import Foundation

//var questionIndex = 0

struct Question {
    var text: String
    var type: ResponseType
    var sort: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: chosenType
}

enum ResponseType {
    case single, multiple, ranged 
}

enum chosenType: Character {
    case iPhone = "📱", watch = "⌚️", macbook = "💻", mac = "🖥", dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
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
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
        
    }
}

var questions: [Question] = [
    Question(text: "Which device do you use the most?",
             type: .single,
             sort: "Device",
             answers: [
        Answer(text: "iPhone", type: .iPhone),
        Answer(text: "Watch", type: .watch),
        Answer(text: "Macbook", type: .macbook),
        Answer(text: "Mac", type: .mac)]),
    
    Question(text: "Which food do you like the most?",
             type:.single,
             sort: "Animal",
             answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
        ]),
    
    Question(text: "What do you do the most?",
             type: .multiple,
             sort: "Device",
             answers: [
        Answer(text: "Working Out", type: .watch),
        Answer(text: "Working", type: .macbook),
        Answer(text: "Netflix and Chill", type: .mac),
        Answer(text: "Connecting with Friends", type: .iPhone)]),
    
    Question(text: "Which activities do you enjoy?",
             type: .multiple,
             sort: "Animal",
             answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)
        ]),
    
    Question(text: "How much do you use your device for work?",
             type: .ranged,
             sort: "Device",
             answers: [
        Answer(text: "Never", type: .watch),
        Answer(text: "Sometimes", type: .iPhone),
        Answer(text: "A lot", type: .mac),
        Answer(text: "Always", type: .macbook)]),
    
    
    Question(text: "How much do you enjoy car rides?",
             type: .ranged,
             sort: "Animal",
             answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous",
                       type: .rabbit),
                Answer(text: "I barely notice them",
                       type: .turtle),
                Answer(text: "I love them", type: .dog)
        ])
]
