//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageLeft : UIImageView!
    
    @IBOutlet weak var diceImageRight: UIImageView!
    
   
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        let diceArray = [UIImage(imageLiteralResourceName:"DiceOne"),UIImage(imageLiteralResourceName:"DiceTwo"),UIImage(imageLiteralResourceName:"DiceThree"),UIImage(imageLiteralResourceName:"DiceFour"),UIImage(imageLiteralResourceName:"DiceFive"),UIImage(imageLiteralResourceName:"DiceSix")]
        
        diceImageLeft.image = diceArray.randomElement()
        
        diceImageRight.image = diceArray.randomElement()
    
    }
    
}

