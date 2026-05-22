//
//  ViewController.swift
//  Area and Perimeter#2
//
//  Created by Alton Rose on 10/14/22.
//

import UIKit

class ViewController: UIViewController{
    
    //all outlets go here
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Lengthtxt: UITextField!
    
    @IBOutlet weak var Widthtxt: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    

    //all actions go here
    
    @IBAction func clear() {
        Label.text = ""
    }
    
    @IBAction func calculate() {
        //0 Declare vars
        // l = length
        // w = width
        // a = area
        // p = perimiter
        var l = 0.0
        var lstr = ""
        var lopt: Double?
        var w = 0.0
        var wstr = ""
        var wopt: Double?
        var a = 0.0
        var p = 0.0
        //1 gather input
        lstr = Lengthtxt.text!
        wstr = Widthtxt.text!
        lopt = Double(lstr)
        wopt = Double(wstr)
        if lopt == nil {
            Lengthtxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        if wopt == nil {
            Widthtxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        l = lopt!
        w = wopt!
        view.endEditing(true)
        //2 process data
        a = l * w
        p = 2.0 * (l+w)
        //3 display results
        Label.text = "Length = \(l)\nWidth = \(w)\nArea = \(a)\nPerimiter = \(p)"
    }
}
