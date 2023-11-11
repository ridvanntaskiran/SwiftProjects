//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        storyLabel.text="You see a fork in the road."
        choice1Button.setTitle("Take a left.", for: .normal)
        choice2Button.setTitle("Take a right.", for: .normal)

    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let exampleSet = StoryBrain().nextQuestion(userChoise: userAnswer)
        storyLabel.text = exampleSet?[0] as? String
        choice1Button.setTitle(exampleSet?[1] as? String, for: .normal)
        choice2Button.setTitle(exampleSet?[2] as? String, for: .normal)
    }
}

