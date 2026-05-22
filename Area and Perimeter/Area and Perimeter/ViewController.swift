//
//  ViewController.swift
//  Area and Perimeter
//
//  Created by Alton Rose on 10/5/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Label: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculate() {
        var l = 3
        var w = 5
        var area = l * w
        var perimiter = 2 * (l+w)
        Label.text = "Area = \(area)\nPerimiter = \(perimiter)"
    }
}

