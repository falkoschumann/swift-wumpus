//
//  game.swift
//  wumpus
//
//  Created by Falko Schumann on 25.04.19.
//  Copyright © 2019 Falko Schumann. All rights reserved.
//

import Foundation

enum GameError: Error {
    case illegalMove
}

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
    
    internal var wumpusesRoom = 0
    internal var huntersRoom = 0
    
    init() {
        repeat {
            locateItems()
        } while hasItemCrossovers()
    }

    private func locateItems() {
        wumpusesRoom = randomRoom()
        huntersRoom = randomRoom()
    }
    
    private func randomRoom() -> Int {
        return Int.random(in: 1...20)
    }
    
    private func hasItemCrossovers() -> Bool {
        return wumpusesRoom == huntersRoom
    }
    
    func reachableRooms(fromRoom: Int) -> (Int, Int, Int) {
        let roomIndex = fromRoom - 1
        return (cave[roomIndex][0], cave[roomIndex][1], cave[roomIndex][2])
    }
    
    func moveHunterTo(room: Int) throws {
        let rooms = reachableRooms(fromRoom: huntersRoom)
        guard rooms.0 == room || rooms.1 == room || rooms.2 == room else {
            throw GameError.illegalMove
        }
        self.huntersRoom = room
    }

}
