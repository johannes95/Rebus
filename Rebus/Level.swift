//
//  Level.swift
//  Rebus
//
//  Created by Johannes Flood on 2015-11-22.
//  Copyright © 2015 Johannes Flood. All rights reserved.
//

import Foundation

class Level {
    let level: Int!
    let rebus: String!
    let solution: String!
    
    init(level: Int, rebus: String, solution: String){
        self.level = level
        self.rebus = rebus
        self.solution = solution
        
    }
    
    func getSolution() -> (String){
        return self.solution
    }
    
    
}
