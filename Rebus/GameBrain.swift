//
//  GameBrain.swift
//  Rebus
//
//  Created by Johannes Flood on 2015-11-22.
//  Copyright © 2015 Johannes Flood. All rights reserved.
//

import Foundation

class GameBrain{
    var atLevel: Int = 1
    var levels = [Level]()
    var amountOfLevels: Int!
    
    init(){
        var i: Int = 1;
        var level: Level!
        
        level = Level(level: i++, rebus: "🌳-d🌟-stjär☔️-gn", solution: "tränare")
        levels.append(level)
        level = Level(level: i++, rebus: "⚽️-tboll🐝", solution: "fobi")
        levels.append(level)
        level = Level(level: i++, rebus: "✈️🐱-tt ", solution: "planka")
        levels.append(level)
        level = Level(level: i++, rebus: "⏱👃🏻-äsa☄-s🚃-va", solution: "tidning")
        levels.append(level)
        
        
    }
    
    
    
    func loadCurrentLevel() -> (Level){
        let currentLevelIndex = self.atLevel - 1 //current level's index in the array
        
        return levels[currentLevelIndex]
    }
    
    func guessingCorrect(guess: String) -> (Bool){
        let currentLevelIndex = self.atLevel - 1 //current level's index in the array
        let solution: String = levels[currentLevelIndex].solution
        
        
        //compare user answer to the correct solution, return true if they're equal
        if(guess == solution){
            return true
        }else{
            return false
        }
    }
}
