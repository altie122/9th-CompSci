//
//  ViewController.swift
//  math stuff
//
//  Created by Alton Rose on 9/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    @IBOutlet weak var radiusTxt: UITextField!
    
    @IBOutlet weak var distanceTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doMath() {
        var x = 27
        let y = 573.0
        var z = 0
        z = x / 7
        print(x)
        print(y)
        print(z)
        screen.text = "the result is: \n\(z)"
        
    }
    
    @IBAction func distance(){
        //0. declare vars
        var radius = 0.0 //input
        var radiusStr = ""
        var optRadius: Double?
        var distance = 0.0 //input
        var distanceStr = ""
        var optDistance: Double?
        var circumfrance = 0.0 //internal
        var revolutions = 0.0 //output
        
        //1. gather input
        radiusStr = radiusTxt.text!
        distanceStr = distanceTxt.text!
        optRadius = Double(radiusStr)
        optDistance = Double(distanceStr)
        if optRadius == nil{
            radiusTxt.text = "INVAID"
            view.endEditing(true)
            return
        }
        radius = optRadius!
        
        if optDistance == nil{
            distanceTxt.text = "INVAID"
            view.endEditing(true)
            return
        }
        distance = optDistance!
        view.endEditing(true)
        //2. process the data
        circumfrance = 2.0 * .pi * radius
        revolutions = distance / circumfrance
        //3. display results
        screen.text = "The number of revolutions is: \n\(revolutions)"
    }
    
    
    @IBAction func clearDisplay() {
        screen.text = ""
    }
    
}

