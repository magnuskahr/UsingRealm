//
//  ViewController.swift
//  UsingRealm
//
//  Created by Magnus Jensen on 27/01/2018.
//  Copyright © 2018 Magnus Jensen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = RealmManagerImpl.sharedInstance
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

