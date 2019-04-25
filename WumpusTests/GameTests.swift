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
    
    func testMove() {
        let game = Game()
        game.room = 3
        
        XCTAssertEqual(game.tunnel1, 2, "Tunnel 1 must be lead to room 2")
        XCTAssertEqual(game.tunnel2, 4, "Tunnel 2 must be lead to room 4")
        XCTAssertEqual(game.tunnel3, 12, "Tunnel 3 must be lead to room 12")
        
        game.moveTo(room: 4)
        
        XCTAssertEqual(game.room, 4, "Player must be in room 4")
        XCTAssertEqual(game.tunnel1, 3, "Tunnel 1 must be lead to room 3")
        XCTAssertEqual(game.tunnel2, 5, "Tunnel 2 must be lead to room 5")
        XCTAssertEqual(game.tunnel3, 14, "Tunnel 3 must be lead to room 14")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
