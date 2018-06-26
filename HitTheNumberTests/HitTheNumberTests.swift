//
//  HitTheNumberTests.swift
//  HitTheNumberTests
//
//  Created by Cast Group on 20/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import XCTest
@testable import HitTheNumber

class HitTheNumberTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_RandomNumber() {
        let vc = ViewController()
        let max = 1000
        let random = vc.generateRandomNumber(max: max)
        XCTAssertLessThan(random, max, "Success")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
