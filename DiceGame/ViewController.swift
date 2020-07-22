//
//  ViewController.swift
//  DiceGame
//
//  Created by Marcy Clayton on 7/22/20.
//  Copyright © 2020 Aaron Clayton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    var score1 = 0
    var score2 = 0
    var number1 = 0
    var number2 = 0
    let imageArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {

        number1 = Int.random(in: 1 ..< 5)
        number2 = Int.random(in: 1 ..< 5)
        diceImageView2.image = imageArray[number2]
        diceImageView1.image = imageArray[number1]
        
        if(number1 > number2){
            score1 += 1
        }else if(number2 > number1){
            score2 += 1
        }else{
            print("tie")
        }
        
        scoreLabel1.text = String(score1)
        scoreLabel2.text = String(score2)
    }
    

}
