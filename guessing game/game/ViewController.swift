//
//  ViewController.swift
//  game
//
//  Created by Alton Rose on 11/30/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var screen: UILabel!
    var number = Int.random(in: 1...100)
    
    
    @IBAction func submit() {
        print(number)
        var guessin = 0
        var guessOpt : Int?
        var guessStr = ""
        //Internal
            
        //output
        
        //Gather Input
        guessStr = guess.text!
        guessOpt = Int(guessStr)
        if guessOpt == nil {
            guess.text = "INVALID"
            view.endEditing(true)
            return
        }
        guessin = guessOpt!
        view.endEditing(true)
        if guessin < 1 || guessin > 100 {
            guess.text = "out of range"
            return
        }
        else if guessin == number {
            screen.text = "you win!"
            number = Int.random(in: 1...100)
        }
        else if guessin < number {
            screen.text = "too low"
        }
        else {
            screen.text = "too high"
        }
        
    }
    

}

