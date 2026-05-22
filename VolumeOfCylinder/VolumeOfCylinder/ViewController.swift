//
//  ViewController.swift
//  VolumeOfCylinder
//
//  Created by Alton Rose on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    //all outlets go here
    @IBOutlet weak var Screen: UILabel!
    
    @IBOutlet weak var Radiustxt: UITextField!
    
    @IBOutlet weak var Highttxt: UITextField!
    
    //all actions go here
    @IBAction func clear() {
        Screen.text=""
    }
    
    @IBAction func Calculate() {
        //0 Declare vars
        var r = 0.0 // input
        var rstr = ""
        var ropt: Double?
        var h = 0.0 // input
        var hstr = ""
        var hopt: Double?
        var ca = 0.0
        var v = 0.0 // output
        //1 gather input
        rstr = Radiustxt.text!
        hstr = Highttxt.text!
        ropt = Double(rstr)
        hopt = Double(hstr)
        if ropt == nil {
            Radiustxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        if hopt == nil {
            Highttxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        r = ropt!
        h = hopt!
        view.endEditing(true)
        //2 process data
        ca = .pi * (r * r)
        v = ca * h
        //3 display results
        Screen.text = "the volume of the cylinder with a radius of \(r) and a hight of \(h) is:\n\(v)"
    }
    
    
    
    
    
    
    
    


}



















































































































































































































































































// Made by TAGMG
// Designed by Altie's Design Studio
