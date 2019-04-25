//
//  game.swift
//  wumpus
//
//  Created by Falko Schumann on 25.04.19.
//  Copyright © 2019 Falko Schumann. All rights reserved.
//

import Foundation

class Game {
    
    private let cave = [
        [2, 5, 8],
        [1, 3, 10],
        [2, 4, 12],
        [3, 5, 14],
        [1, 4, 6],
        
        [5, 7, 15],
        [6, 8, 17],
        [1, 7, 9],
        [8, 10, 18],
        [2, 9, 11],
        
        [10, 12, 19],
        [3, 11, 13],
        [12, 14, 20],
        [4, 13, 15],
        [6, 14, 16],
        
        [15, 17, 20],
        [7, 16, 18],
        [9, 17, 19],
        [11, 18, 20],
        [13, 16, 19]
    ]
    
    internal var room: Int = 1
    
    var tunnel1: Int {
        get {
            let roomIndex = room - 1
            let tunnelIndex = 0
            return cave[roomIndex][tunnelIndex]
        }
    }
    
    var tunnel2: Int {
        get {
            let roomIndex = room - 1
            let tunnelIndex = 1
            return cave[roomIndex][tunnelIndex]
        }
    }
    
    var tunnel3: Int {
        get {
            let roomIndex = room - 1
            let tunnelIndex = 2
            return cave[roomIndex][tunnelIndex]
        }
    }
    
    func moveTo(room: Int) {
        self.room = room
    }

}
