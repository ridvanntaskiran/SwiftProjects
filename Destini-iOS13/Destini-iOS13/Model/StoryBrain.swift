//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain{
    
    let example = [
    Story(q:"You see a fork in the road.",a1:"Take a left",a2:"Take a right."),
    Story(q:"You see a tiger",a1: "Shout for help.",a2:"Play dead."),
    Story(q:"You find a treasure chest.",a1: "Open it.",a2:"Check for traps.")
    ]
    
    
    func nextQuestion(userChoise:String)-> (Array<Any>)?{
        if userChoise=="Take a left."
        {
            let exampleSet = [example[1].title, example[1].choice1, example[1].choice2]
            return exampleSet
           
        }else if userChoise=="Take a right."{
            let exampleSet = [example[2].title, example[2].choice1, example[2].choice2]
            return exampleSet
        }
        let text = ["", "GAME OVER", ""]
       return text
    }
}



