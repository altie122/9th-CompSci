//
//  ViewController.swift
//  Car Models
//
//  Created by Alton Rose on 12/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            sleep(2)
        }
    //outlets go here
    @IBOutlet weak var screen: UILabel!
    
    @IBOutlet weak var model: UITextField!
    //clear function
    
    
    @IBAction func Check() {
        //Var creation
            //Input
        var modelin = 0
        var modelInOpt : Int?
        var modelInStr = ""
            //Internal
        
            //outpu
        
        //Gather Input
        modelInStr = model.text!
        modelInOpt = Int(modelInStr)
        if modelInOpt == nil {
            model.text = "INVALID"
            view.endEditing(true)
            return
            }
        modelin = modelInOpt!
        view.endEditing(true)
        if modelin == 119 || modelin == 117 || modelin == 189 || modelin == 190 || modelin == 191 || modelin == 192 || modelin == 193 || modelin == 194 || modelin == 195 || modelin == 221 || modelin == 780{
            screen.text = "Your car is defective. Please take it to a dealer for repairs."
        }
        else{
        screen.text = "The model number enter is not listed as needing service."
        }
    }
    
}
