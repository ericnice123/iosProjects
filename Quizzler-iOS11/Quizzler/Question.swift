//
//  Question.swift
//  Quizzler
//
//  Created by Tsung-huan Tsai on 12/28/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init( text : String, correctAnswer : Bool ) {
        questionText = text
        answer = correctAnswer
    }
    
    
}
