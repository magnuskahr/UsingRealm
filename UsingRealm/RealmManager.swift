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
    var fix: String { get }
}

class RealmManagerImpl : RealmManager {
    let fix: String = ""
    
    private var database: Realm
    static let sharedINstance = RealmManagerImpl()
    
    private init() {
        database = try! Realm()
    }
    
    func getData() -> SomeEntry {
        
    }
}
