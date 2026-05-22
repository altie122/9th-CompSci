//
//  ViewController.swift
//  Energy
//
//  Created by Alton Rose on 11/2/22.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    
    @IBOutlet weak var kg: UITextField!
    
    @IBOutlet weak var joules: UILabel!
    
    @IBOutlet weak var bulbes: UILabel!
    
    @IBAction func Clear() {
        joules.text = "the energy produced is ___ joules"
        bulbes.text = "The number of 100 watt bulbes powered is ______"
    }
    
    @IBAction func calculate() {
        var Kg = 0.0
        var KgOpt : Double?
        var KgStr = ""
        var Joules = 0.0
        var Bulbespowered = 0.0
        let c = 3.0 * pow(10.0, 8.0)
        //
        KgStr = kg.text!
        KgOpt = Double(KgStr)
        if KgOpt == nil {
            kg.text = "INVALID"
            view.endEditing(true)
            return
        }
        Kg = KgOpt!
        view.endEditing(true)
        //
        Joules = Kg * c * c
        Bulbespowered = Joules/360000
        //
        joules.text = "the energy produced is \(Joules) joules"
        bulbes.text = "The number of 100 watt bulbes powered is \(Bulbespowered)"
    }
}
