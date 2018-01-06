//
//  Story.swift
//  Destini
//
//  Created by Tsung-huan Tsai on 1/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    var leftStory : Story? = nil
    var rightStory : Story? = nil
    var leftAnswer : String
    var rightAnswer : String
    var story : String
    
    init( story : String,
          leftAnswer : String,
          rightAnswer : String )
    {
        self.story = story
        self.leftAnswer = leftAnswer
        self.rightAnswer = rightAnswer
    }
    
    func addLeftStory( story : Story ) {
        self.leftStory = story
    }
    
    func addRightStory( story : Story ) {
        self.rightStory = story
    }
}
