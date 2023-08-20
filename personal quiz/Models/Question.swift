//
//  Question.swift
//  personal quiz
//
//  Created by mac on 20.08.2023.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "What food do you like?",
                responseType: .single,
                answers: [
                    Answer(title: "Steak", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Pizza", animal: .turtle),
                    Answer(title: "Carrot", animal: .rabbit)
                ]
            ),
            Question(
                title: "What do you like more?",
                responseType: .multiple,
                answers: [
                    Answer(title: "Workout", animal: .dog),
                    Answer(title: "Sleep", animal: .cat),
                    Answer(title: "Martial arts", animal: .turtle),
                    Answer(title: "F*ck", animal: .rabbit)
                ]
            ),
            Question(
                title: "Do you like to travel by car?",
                responseType: .ranged,
                answers: [
                    Answer(title: "hate", animal: .dog),
                    Answer(title: "don't care", animal: .cat),
                    Answer(title: "hell yeah!!!", animal: .turtle),
                    Answer(title: "neutral", animal: .rabbit)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case cat = "😸"
    case dog = "🐶"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .cat:
            return "You are asshole"
        case .dog:
            return "You are sigma 🐐"
        case .turtle:
            return "You are slow"
        case .rabbit:
            return "You are fast"
        }
    }
}

