//
//  ViewController.swift
//  Circle
//
//  Created by Alton Rose on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var c = 0.0
    var r = 15.0
    
    @IBAction func calcuate() {
        c = 2.0 * .pi * r
        Label.text = "the circumference is: \(c)"
    }
    

}


