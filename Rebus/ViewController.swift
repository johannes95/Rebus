//
//  ViewController.swift
//  Rebus
//
//  Created by Johannes Flood on 2015-11-22.
//  Copyright © 2015 Johannes Flood. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {
    var gameBrain: GameBrain = GameBrain()
    
    @IBOutlet var iAdBanner: ADBannerView?
    @IBOutlet weak var timeLeft: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var guessingLabel: UILabel!
    @IBOutlet weak var guessInput: UITextField!
    @IBOutlet weak var statusEmoji: UILabel!
    @IBOutlet weak var scoreContainer: UIImageView!
    @IBOutlet weak var timeContainer: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var guessBtn: UIButton!
    
    @IBOutlet weak var menuLogo: UIImageView!
    @IBOutlet weak var menuEmoji: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var infoBtn: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    //start the game
    @IBAction func playBtnPressed(sender: AnyObject) {
        showMenu(false) // hide menu
        showGame(true) // show game screen
        
        
        //get current level object
        var currentLevelObject: Level;
        currentLevelObject = gameBrain.loadCurrentLevel()
        
        //display the data to the user
        self.guessingLabel.text = currentLevelObject.rebus
        self.score.text = "\(currentLevelObject.level)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("We're running out of memory")
    }
    
    
    func showMenu(visible: Bool){
        if(!visible){
            menuLogo.hidden = true
            menuEmoji.hidden = true
            infoBtn.hidden = true
            playBtn.hidden = true
        }else{
            menuLogo.hidden = false
            menuEmoji.hidden = false
            infoBtn.hidden = false
            playBtn.hidden = false
        }
    }
    
    func showGame(visible: Bool){
        timeLeft.hidden = !visible
        score.hidden = !visible
        guessingLabel.hidden = !visible
        guessInput.hidden = !visible
        statusEmoji.hidden = !visible
        scoreContainer.hidden = !visible
        timeContainer.hidden = !visible
        timeLabel.hidden = !visible
        guessBtn.hidden = !visible
        
    }
    
    
    
    @IBAction func guessPressed(sender: AnyObject) {
        guessInput.resignFirstResponder() //close keyboard
        var userGuess: String!
    }
    
}

