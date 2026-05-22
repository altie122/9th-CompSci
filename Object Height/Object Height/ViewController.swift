//
//  ViewController.swift
//  Object Height
//
//  Created by Alton Rose on 10/17/22.
//

import UIKit

class ViewController: UIViewController {

    //all outlets go here

    @IBOutlet weak var screen: UILabel!
    
    @IBOutlet weak var timetxt: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    

    //all actions go here
    
    @IBAction func clear() {
        screen.text = ""
    }
    
    @IBAction func Calculate() {
        //0 Declare vars
        var t = 0.0
        var tstr = ""
        var topt: Double?
        var h = 0.0
        //1 gather input
        tstr = timetxt.text!
        topt = Double(tstr)
        if topt == nil {
            timetxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        t = topt!
        view.endEditing(true)
        //2 process data
        h = 100-4.9*(t*t)
        //3 display results
        screen.text = "Height= \(h)"
    }
    
    
    
    
    
}
//Made by TAGMG and ADS
