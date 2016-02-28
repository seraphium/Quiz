//
//  ViewController.swift
//  Quiz
//
//  Created by Jackie Zhang on 16/2/23.
//  Copyright © 2016年 Jackie Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.questionLabel.alpha = 0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        
        
    }
    @IBAction func showNextQuestion(sender: AnyObject)
    {
        ++currentQuestionIndex;
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0;
        }
        let question : String = questions[currentQuestionIndex];
        questionLabel.text = question;
        answerLabel.text = "???";
        animateLabelTransitions()
        
    }
    @IBAction func showAnswer(sender: AnyObject)
    {
        let answer : String = answers[currentQuestionIndex];
        answerLabel.text = answer;
    }
    let questions : [String] = ["question1", "question2", "question3"]
    let answers : [String] = ["answer1", "answer2", "answer3"]
    var currentQuestionIndex : Int = 0;
    
    func animateLabelTransitions() {
        UIView.animateWithDuration(0.5, animations: {
            self.questionLabel.alpha = 1
            })
        
        
    }
}

