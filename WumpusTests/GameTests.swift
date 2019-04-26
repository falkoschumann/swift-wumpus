//
//  WumpusTests.swift
//  WumpusTests
//
//  Created by Falko Schumann on 25.04.19.
//  Copyright © 2019 Falko Schumann. All rights reserved.
//

import XCTest

class GameTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testNoCrossoversOfItems() {
        let game = Game()
        
        XCTAssertNotEqual(game.wumpusesRoom, game.huntersRoom)
    }
    
    func testMove() {
        let game = Game()
        game.huntersRoom = 3
        
        var reachableRooms = game.reachableRooms(fromRoom: 3)
        XCTAssertEqual(reachableRooms.0, 2, "Tunnel 1 must be lead to room 2")
        XCTAssertEqual(reachableRooms.1, 4, "Tunnel 2 must be lead to room 4")
        XCTAssertEqual(reachableRooms.2, 12, "Tunnel 3 must be lead to room 12")

        XCTAssertThrowsError(try game.moveHunterTo(room: 20), "Move to 20 is not legal") { (error) -> Void in
            XCTAssertEqual(error as? GameError, GameError.illegalMove)
        }
        
        try! game.moveHunterTo(room: 4)
        
        XCTAssertEqual(game.huntersRoom, 4, "Hunter must be in room 4")
        reachableRooms = game.reachableRooms(fromRoom: 4)
        XCTAssertEqual(reachableRooms.0, 3, "Tunnel 1 must be lead to room 3")
        XCTAssertEqual(reachableRooms.1, 5, "Tunnel 2 must be lead to room 5")
        XCTAssertEqual(reachableRooms.2, 14, "Tunnel 3 must be lead to room 14")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
