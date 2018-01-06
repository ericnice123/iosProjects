//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // variables
    var storyTree : CustomStory = CustomStory()
    var currentStory : Story?
    
    let TOPBUTTON : Int = 1
    let BOTTOMBUTTON : Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        restart()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if sender.tag == TOPBUTTON {
            if currentStory?.leftStory != nil {
                currentStory = currentStory?.leftStory
            }
        }
        else if sender.tag == BOTTOMBUTTON {
            if currentStory?.rightStory != nil {
                currentStory = currentStory?.rightStory
            }
        }
        
        renderStory(story: currentStory!)
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        restart()
    }
    
    func renderStory( story : Story ) {
        storyTextView.text = story.story
        if( story.leftAnswer == "" && story.rightAnswer == "" ) {
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
        }
        topButton.setTitle(story.leftAnswer, for: .normal)
        bottomButton.setTitle(story.rightAnswer, for: .normal)
    }
    
    func restart() {
        currentStory = storyTree.getHeadStory()
        restartButton.isHidden = true
        topButton.isHidden = false
        bottomButton.isHidden = false
        renderStory(story: storyTree.getHeadStory())
    }
    

}

