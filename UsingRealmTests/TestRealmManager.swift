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
    
    var manager: RealmManagerImpl!
    
    override func setUp() {
        super.setUp()
        manager = RealmManagerImpl.sharedInstance
        manager.deleteAll()
    }
    
    override func tearDown() {
        manager = nil
        super.tearDown()
    }
    
    func testContainZeroEntries() {
        XCTAssertEqual(manager.entries.count, 0)
    }
    
    func testAddOneEntry() {
        let entry = SomeEntry()
        entry.title = "test"
        manager.add(entry: entry)
        XCTAssertEqual(manager.entries.count, 1)
    }
}
