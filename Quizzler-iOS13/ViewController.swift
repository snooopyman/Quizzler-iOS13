//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["2 + 2  = 4 ?", "True"],
        ["2 * 2  = 8 ?", "False"],
        ["2 - 2  = 4 ?", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if (userAnswer == actualAnswer) {
            print("RIGHT")
        } else {
            print("ERROR")
        }
        
        if(questionNumber + 1 < quiz.count) {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
  
        updateUI()
        
    }
    
    func updateUI () {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

