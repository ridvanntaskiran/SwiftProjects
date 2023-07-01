//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var prView: UIProgressView!
    
    let hardness = ["Soft": 3 , "Medium": 4 , "Hard": 7]
    
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    var progresss = 0.0
    
    @IBAction func hardnessButton(_ sender: UIButton) {
        
        timer.invalidate()
        
        let type = sender.currentTitle!
        totalTime = hardness[type]!
        print(totalTime)
        
        prView.progress = 0.0
        secondsPassed = 0
        titleLabel.text = type
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            print(secondsPassed)
            print(totalTime)
            
            secondsPassed += 1
            prView.progress = Float(secondsPassed) / Float(totalTime)
            
            
            
        }
        else{
                timer.invalidate()
                titleLabel.text = "Done!"
            
            let url = Bundle.main.url(forResource: "alarm_sound" , withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            
            player.play()
            
            }
        }
    
    
}
