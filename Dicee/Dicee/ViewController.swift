//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    let allDice = [
        UIImage(named: "DiceOne"),
       UIImage(named: "DiceTwo"),
       UIImage(named: "DiceThree"),
       UIImage(named: "DiceFour"),
       UIImage(named: "DiceFive"),
       UIImage(named: "DiceSix"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewRight.image = allDice[Int.random(in: 0...5)]
        diceImageViewLeft.image = allDice[Int.random(in: 0...5)]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewRight.image = allDice[Int.random(in: 0...5)]
        diceImageViewLeft.image = allDice[Int.random(in: 0...5)]
    }
    
}

