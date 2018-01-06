//
//  CustomStory.swift
//  Destini
//
//  Created by Tsung-huan Tsai on 1/5/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class CustomStory {
    
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    var headStory : Story
    var story_2 : Story
    var story_3 : Story
    var story_4 : Story
    var story_5 : Story
    var story_6 : Story
    
    
    init() {
        headStory = Story(story: story1,
                          leftAnswer: answer1a,
                          rightAnswer: answer1b)
        
        story_2 = Story(story: story2,
                        leftAnswer: answer2a,
                        rightAnswer: answer2b)
        
        story_3 = Story(story: story3,
                        leftAnswer: answer3a,
                        rightAnswer: answer3b)
        
        story_4 = Story(story: story4,
                        leftAnswer: "",
                        rightAnswer: "")
        
        story_5 = Story(story: story5,
                        leftAnswer: "",
                        rightAnswer: "")
        
        story_6 = Story(story: story6,
                        leftAnswer: "",
                        rightAnswer: "")
        
        headStory.addLeftStory(story: story_3)
        headStory.addRightStory(story: story_2)
        
        story_3.addLeftStory(story: story_6)
        story_3.addRightStory(story: story_5)
        
        story_2.addLeftStory(story: story_3)
        story_2.addRightStory(story: story_4)
        
    }
    
    func getHeadStory() -> Story {
        return headStory
    }
}
