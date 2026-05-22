//
//  ViewController.swift
//  School Info
//
//  Created by Alton Rose on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var location: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sleep(1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func UAT(_ sender: UIButton) {
        location.text = "School: University of Advancing Technology (UAT)  State: Arizona      Town: Tempe"
    }
    
    
    @IBAction func LCCC(_ sender: UIButton) {
        location.text = "School: Laramie County Community College (LCCC)  State: Wyoming      Town: Cheyenne"
    }
    
    
    @IBAction func PennState(_ sender: Any) {
        location.text = "School: Penn State  State: Pennsylvania      Town: State College"
    }
    
}

