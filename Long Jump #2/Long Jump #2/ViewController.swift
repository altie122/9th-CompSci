//
//  ViewController.swift
//  Long Jump #2
//
//  Created by Alton Rose on 10/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sentence: UILabel!
    
    @IBOutlet weak var Screen: UILabel!
    
    @IBOutlet weak var Jump_1: UITextField!
    
    @IBOutlet weak var Jump_2: UITextField!
    
    @IBOutlet weak var Jump_3: UITextField!
    
    @IBOutlet weak var Jump_4: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    
    
    @IBAction func Clear() {
        Screen.text = "Average:"
        sentence.text = "What is the average jump length of a long jumper whose jumps were __m, __m, __m, and __m?"
    }
    
    @IBAction func Calculate() {
        //0 Declare vars
        
        var Jump1 = 0.0
        var Jump1str = ""
        var Jump1opt: Double?
        
        var Jump2 = 0.0
        var Jump2str = ""
        var Jump2opt: Double?
        
        var Jump3 = 0.0
        var Jump3str = ""
        var Jump3opt: Double?
        
        var Jump4 = 0.0
        var Jump4str = ""
        var Jump4opt: Double?
        
        var Average = 0.0
        
        //1 gather input
        
        Jump1str = Jump_1.text!
        Jump2str = Jump_2.text!
        Jump3str = Jump_3.text!
        Jump4str = Jump_4.text!
        
        Jump1opt = Double(Jump1str)
        Jump2opt = Double(Jump2str)
        Jump3opt = Double(Jump3str)
        Jump4opt = Double(Jump4str)
        
        if Jump1opt == nil {
            Jump_1.text = "INVALID"
            view.endEditing(true)
            return
        }
        if Jump2opt == nil {
            Jump_2.text = "INVALID"
            view.endEditing(true)
            return
        }
        if Jump3opt == nil {
            Jump_3.text = "INVALID"
            view.endEditing(true)
            return
        }
        if Jump4opt == nil {
            Jump_4.text = "INVALID"
            view.endEditing(true)
            return
        }
        
        Jump1 = Jump1opt!
        Jump2 = Jump2opt!
        Jump3 = Jump3opt!
        Jump4 = Jump4opt!
        
        view.endEditing(true)
        
        //2 process data
        
        Average = 4 / (Jump4 + Jump3 + Jump2 + Jump1)
        
        //3 display results
        
        Screen.text = "Average= \(Average)"
        sentence.text = "What is the average jump length of a long jumper whose jumps were \(Jump1)m, \(Jump2)m, \(Jump3)m, and \(Jump4)m?"
    }
}
