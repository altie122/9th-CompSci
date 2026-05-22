//
//  ViewController.swift
//  Digits
//
//  Created by Alton Rose on 11/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            sleep(2)
        }
       
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var screen: UILabel!
    
    @IBAction func clear() {
        screen.text = "first digit: \nSeccond digit:"
    }
        
        
    @IBAction func calcuateDigits() {
        //Var creation
        var numberIn = 0
        var numberInOpt : Int?
        var numberInStr = ""
        var number1 = 0
        var number2 = 0
        //Gather Input
        numberInStr = number.text!
        numberInOpt = Int(numberInStr)
        if numberInOpt == nil {
            number.text = "INVALID"
            view.endEditing(true)
            return
        }
        numberIn = numberInOpt!
        view.endEditing(true)
        //Math Stuff
        number1 = numberIn / 10
        number2 = numberIn % 10
        //Display Results
        screen.text = "first digit:\(number1)\nSeccond digit:\(number2)"
    }
}

