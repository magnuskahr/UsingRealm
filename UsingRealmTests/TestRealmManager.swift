//
//  TestRealmManager.swift
//  UsingRealmTests
//
//  Created by Magnus Jensen on 27/01/2018.
//  Copyright © 2018 Magnus Jensen. All rights reserved.
//

import XCTest

@testable import UsingRealm
class TestRealmManager: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let manager : RealmManager = RealmManagerImpl.sharedInstance
        XCTAssertEqual(manager.entries.count, 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
