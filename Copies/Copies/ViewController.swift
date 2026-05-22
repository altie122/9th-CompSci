//
//  ViewController.swift
//  Copies
//
//  Created by Alton Rose on 12/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            sleep(2)
        }
    //outlets go here
    @IBOutlet weak var copiesTxt: UITextField!
    @IBOutlet weak var screen: UILabel!
    //clear function
    @IBAction func clear(_ sender: UITextField) {
        screen.text = ""
    }

    @IBAction func calculate() {
        //Var creation
            //Input
        var copies = 0.0
        var copiesOpt : Double?
        var copiesStr = ""
            //Internal
        
            //output
        var pricePer = 0.0
        var price = 0.0
        //Gather Input
        copiesStr = copiesTxt.text!
        copiesOpt = Double(copiesStr)
        if copiesOpt == nil {
            copiesTxt.text = "INVALID"
            view.endEditing(true)
            return
        }
        copies = copiesOpt!
        view.endEditing(true)
        //Math Stuffs
        if copies > 0 && copies <= 499 {
            pricePer = 0.30
            price = copies * pricePer
            
            screen.text = "The price per copy is $\(pricePer)\n\nThe total price is $\(price)"
        }
        else if copies > 500 && copies <= 749 {
            pricePer = 0.28
            price = copies * pricePer
            
            screen.text = "The price per copy is $\(pricePer)\n\nThe total price is $\(price)"
        }
        else if copies > 750 && copies <= 999 {
            pricePer = 0.27
            price = copies * pricePer
            
            screen.text = "The price per copy is $\(pricePer)\n\nThe total price is $\(price)"
        }
        else {
            pricePer = 0.25
            price = copies * pricePer
            
            screen.text = "The price per copy is $\(pricePer)\n\nThe total price is $\(price)"
        }
        //Display Results
    }
}

