//
//  SomeEntry.swift
//  UsingRealm
//
//  Created by Magnus Jensen on 27/01/2018.
//  Copyright © 2018 Magnus Jensen. All rights reserved.
//

import Foundation
import RealmSwift

public class SomeEntry: Object {
    
    @objc dynamic var ID = UUID().uuidString
    @objc dynamic var title = "aTitle"
    
    /**
     Name of variable to hold primary key
    */
    override public static func primaryKey() -> String? {
        return "ID"
    }
}
