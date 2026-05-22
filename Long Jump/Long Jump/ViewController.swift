//
//  ViewController.swift
//  Long Jump
//
//  Created by Alton Rose on 10/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Calculate() {
        var j1 = 3.0
        var j2 = 3.3
        var j3 = 3.5
        var average = 3 / (j3 + j2 + j1)
        label.text = "Average: \(average)m"
    }
    
}

