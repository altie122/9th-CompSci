//
//  ViewController.swift
//
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeButton() {
        myLabel.text = " Label Changed"
    }
    
    
    @IBAction func changeBack() {
        myLabel.text = " Hello World from a phone app"
    }
    
    
    
    
}

