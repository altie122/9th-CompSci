//
//  ViewController.swift
//  change
//
//  Created by Alton Rose on 11/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    //outlets go here
    
    @IBOutlet weak var screen: UILabel!
    
    @IBOutlet weak var changeInput: UITextField!
    
    //clear
    @IBAction func clear() {
        screen.text = ""
    }
    //actions go here
    @IBAction func calculate() {
        //Var creation
            //inputs
        var change = 0
        var changeOpt : Int?
        var changeStr = ""
            //internal
            
            //outputs
        var quarters = 0
        var dimes = 0
        var nickles = 0
        var pennies = 0
        //Gather Input
        changeStr = changeInput.text!
        changeOpt = Int(changeStr)
        if changeOpt == nil {
            changeInput.text = "INVALID"
            view.endEditing(true)
            return
        }
        change = changeOpt!
        view.endEditing(true)
        //Math Stuffs
        quarters = change / 25
        change = change % 25
        dimes = change / 10
        change = change % 10
        nickles = change / 5
        change = change % 5
        pennies = change
        //Display Results
        screen.text = "Quarters = \(quarters)\nDimes = \(dimes)\nNickles = \(nickles)\nPennies = \(pennies)"
    }
}
