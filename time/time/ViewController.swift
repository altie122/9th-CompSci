//
//  ViewController.swift
//  time
//
//  Created by Alton Rose on 11/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            sleep(2)
        }
    //outlets go here
    @IBOutlet weak var screen: UILabel!
    
    @IBOutlet weak var timeTxt: UITextField!
    
    //clear function
    @IBAction func clear() {
    screen.text = ""
    }
    
    //actions go here
    @IBAction func timeChange(_ sender: UISegmentedControl) {
        //Var creation
                //Input
        var timeInput = 0
        var timeInputOpt : Int?
        var timeInputStr = ""
                //Internal
            
                //output
        var mainOutput = 0
        var auxOutput = 0
        //Gather Input
        timeInputStr = timeTxt.text!
        timeInputOpt = Int(timeInputStr)
        if timeInputOpt == nil {
            timeTxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        timeInput = timeInputOpt!
        view.endEditing(true)
        if sender.selectedSegmentIndex == 0 {
            mainOutput = timeInput * 60
            screen.text = "\(timeInput) = \(mainOutput) secconds"
        }
        if sender.selectedSegmentIndex == 1 {
            mainOutput = timeInput / 60
            auxOutput = timeInput % 60
            screen.text = "\(timeInput) = \(mainOutput) secconds"
        }
    }
}

