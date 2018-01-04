//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    // const
    let allQuestion = QuestionBank()
    let TRUEBUTTON : Int = 1
    let FALSEBUTTON : Int = 2
    let TOTALSCORE : Int = 13
    
    // var
    var currentQuestion : Int = 0
    var score : Int = 0
    var progress : Int = 1
    var pickedAnswer : Bool = false
    var isAnswerCorrect : Bool = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startOver()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == TRUEBUTTON {
            pickedAnswer = true
        }
        else if sender.tag == FALSEBUTTON {
            pickedAnswer = false
        }
        
        checkAnswer(question: allQuestion.list[currentQuestion], userAnswer: pickedAnswer)
        nextQuestion()
        updateUI( )
        
    }
    
    
    func updateUI( ) {
        // display question
        questionLabel.text = allQuestion.list[currentQuestion].questionText
        // display score
        scoreLabel.text = "Score: \(score)"
        // display progress label
        progressLabel.text = "\(progress)/13"
        // display progress bar
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(TOTALSCORE) ) * CGFloat(progress)
    }
    

    func nextQuestion() {
        if currentQuestion == TOTALSCORE - 1 {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                self.updateUI()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        else {
            currentQuestion = currentQuestion + 1
            progress = progress + 1
        }
        
    }
    
    
    func checkAnswer( question : Question, userAnswer : Bool) {
        if question.answer == userAnswer {
            isAnswerCorrect = true
            ProgressHUD.showSuccess("Correct")
            score = score + 1
        }
        else {
            isAnswerCorrect = false
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        progressLabel.text = "1/13"
        scoreLabel.text = "Score: 0"
        questionLabel.text = allQuestion.list[0].questionText
        currentQuestion = 0
        progress = 1
        score = 0
        updateUI()
    }
    

    
}
