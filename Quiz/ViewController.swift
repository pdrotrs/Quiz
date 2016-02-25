//
//  ViewController.swift
//  Quiz
//
//  Created by Pedro A. Torres Leon on 2/24/16.
//  Copyright © 2016 Torres Interactive. All rights reserved.
//

import UIKit
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "Would you use your phone while having a date?", Answers: ["Yes!","No!","I don't have a date"], Answer: 2)]
        
        PickQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion() {
    
        if Questions.count > 0 {
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            for i in 0..<Buttons.count {
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            
            Questions.removeAtIndex(QNumber)
        }
        
        else {
            NSLog("Done!")
        }
    }
}

