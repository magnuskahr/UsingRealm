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
}

class RealmManagerImpl : RealmManager {
    
    private var database: Realm
    private(set) var entries = [SomeEntry]()
    
    static let sharedInstance = RealmManagerImpl()
    
    private init() {
        database = try! Realm()
        
        for entry in database.objects(SomeEntry.self) {
            entries.append(entry)
        }
    }
    
}
