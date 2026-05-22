//
//  ViewController.swift
//  Properties
//
//  Created by Alton Rose on 9/21/22.
//

import UIKit
class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func commutative(_ sender: Any) {
        label.text = "a x b = b x a"
    }
    
    
    @IBAction func associative(_ sender: Any) {
        label.text = "(a x b) x c = a x (b x c)"
    }
    
}

