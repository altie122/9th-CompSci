//
//  ViewController.swift
//  Hello Goodbye
//
//  Created by Alton Rose on 9/28/22.
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

    
    @IBAction func Hello(_ sender: Any) {
        Label.text = "Hello"
    }
    
    
    @IBAction func Goodbye(_ sender: Any) {
        Label.text = "Goodbye"
    }
    
}

