//
//  ViewController.swift
//  Quiz
//
//  Created by Jackie Zhang on 16/2/23.
//  Copyright © 2016年 Jackie Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currentQuestionLabel : UILabel!
    @IBOutlet var currentQuestonLabelCenterXConstraint : NSLayoutConstraint!
    
    @IBOutlet var nextQuestionLabel : UILabel!
    @IBOutlet var nextQuestonLabelCenterXConstraint : NSLayoutConstraint!

    @IBOutlet var answerLabel : UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        nextQuestionLabel.alpha = 0
        
        let screenWidth = view.frame.width
        nextQuestonLabelCenterXConstraint.constant = -screenWidth
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateOffScreenLabel()
        
    }
    
    
    @IBAction func showNextQuestion(sender: AnyObject)
    {
        ++currentQuestionIndex;
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0;
        }
        let question : String = questions[currentQuestionIndex];
        nextQuestionLabel.text = question;
        answerLabel.text = "???";
        animateLabelTransitions()
        
    }
    @IBAction func showAnswer(sender: AnyObject)
    {
        let answer : String = answers[currentQuestionIndex];
        answerLabel.text = answer;
    }
    let questions : [String] = ["what is sun?", "do you like me?", "how can you do this?"]
    let answers : [String] = ["answer1", "answer2", "answer3"]
    var currentQuestionIndex : Int = 0;
    
    func animateLabelTransitions() {
        //force refresh of view
        view.layoutIfNeeded()
        
        let screenWidth = view.frame.width
        self.nextQuestonLabelCenterXConstraint.constant = 0
        self.currentQuestonLabelCenterXConstraint.constant += screenWidth
        UIView.animateWithDuration(0.5,
            delay:0,
            options: [],
            
            animations: {
                self.currentQuestionLabel.alpha = 0
                self.nextQuestionLabel.alpha = 1
                self.view.layoutIfNeeded()
            },
            completion: { _ in
                swap(&self.currentQuestionLabel, &self.nextQuestionLabel)
                swap(&self.currentQuestonLabelCenterXConstraint, &self.nextQuestonLabelCenterXConstraint)
                self.updateOffScreenLabel()
                
        })
    }

    func updateOffScreenLabel() {
        let screenWidth = view.frame.width
        nextQuestonLabelCenterXConstraint.constant = -screenWidth
        
    }
    
    
    
    
    
    
    
    
    
}

