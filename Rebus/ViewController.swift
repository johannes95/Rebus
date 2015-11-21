//
//  ViewController.swift
//  Rebus
//
//  Created by Johannes Flood on 2015-11-22.
//  Copyright © 2015 Johannes Flood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLeft: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var guessingLabel: UILabel!
    @IBOutlet weak var guessInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        score.text = "7"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

