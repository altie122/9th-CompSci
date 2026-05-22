//
//  ViewController.swift
//  Temp Conversion
//
//  Created by Alton Rose on 10/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    //Inputs
    
    @IBOutlet weak var Screen: UILabel!
    
    @IBOutlet weak var Temp: UITextField!
    
    
    @IBAction func Clear() {
        Screen.text = "Your temputrure in degrees ___ is ___"
    }
    
    
    // Conversion formulas
    // C to F:(c°C × 9/5) + 32
    // F to C:(f°F − 32) × 5/9

    @IBAction func FConversion() {
        //Declare Vars
        var F = 0.0
        var Fstr = ""
        var Fopt: Double?
        var Celcius = 0.0
        // gather input
        Fstr = Temp.text!
        Fopt = Double(Fstr)
        if Fopt == nil {
            Temp.text = "INVALID"
            view.endEditing(true)
            return
        }
        F = Fopt!
        view.endEditing(true)
        //process data
        Celcius = (F-32)*5.0/9.0
        //display results
        Screen.text = "Your temputrure in degrees farhenheit is \(Celcius)"
    }
    
    @IBAction func CConversion() {
        //Declare Vars
        var C = 0.0
        var Cstr = ""
        var Copt: Double?
        var farhenheit = 0.0
        // gather input
        Cstr = Temp.text!
        Copt = Double(Cstr)
        if Copt == nil {
            Temp.text = "INVALID"
            view.endEditing(true)
            return
        }
        C = Copt!
        view.endEditing(true)
        //process data
        farhenheit = (C*9.0/5.0)+32
        //display results
        Screen.text = "Your temputrure in degrees celcius is \(farhenheit)"
    }
    
    
    
}

