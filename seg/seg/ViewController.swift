//
//  ViewController.swift
//  seg
//
//  Created by Alton Rose on 11/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    
    
    
    @IBAction func changed(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            screen.text = "You selected Ford"
        }
        if sender.selectedSegmentIndex == 1{
            screen.text = "You selected Chevy"
        }
        if sender.selectedSegmentIndex == 2{
            screen.text = "You selected Chrysler"
        }
    }
    

}

