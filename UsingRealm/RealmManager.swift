//
//  RealmManager.swift
//  UsingRealm
//
//  Created by Magnus Jensen on 27/01/2018.
//  Copyright © 2018 Magnus Jensen. All rights reserved.
//

import Foundation
import RealmSwift


protocol RealmManager {
    var entries: [SomeEntry] { get }
    func add(entry: SomeEntry)
}

class RealmManagerImpl : RealmManager {
    
    private var database: Realm
    private(set) var entries = [SomeEntry]()
    
    static let sharedInstance = RealmManagerImpl()
    
    private init() {
        database = try! Realm()
        entries.append(contentsOf: database.objects(SomeEntry.self))
    }
    
    func add(entry: SomeEntry) {
        try! database.write {
            database.add(entry, update: true)
            entries.append(entry)
            print("Did add: \(entry.title)")
        }
    }
    
    func deleteAll() {
        try! database.write {
            database.deleteAll()
            entries = []
        }
    }
}
