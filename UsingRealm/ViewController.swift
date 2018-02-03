//
//  ViewController.swift
//  UsingRealm
//
//  Created by Magnus Jensen on 03/02/2018.
//  Copyright © 2018 Magnus Jensen. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    lazy var manager : RealmManager = RealmManagerImpl.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didTapAddButton(_ sender: Any) {
        let alert = UIAlertController(title: "New entry", message: "Enter a new entry", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { textfield in
            textfield.text = "title"
        })
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { _ in
            guard let textfield = alert.textFields?[0] else {
                return
            }
            
            let entry = SomeEntry()
            entry.title = textfield.text ?? ""
            self.manager.add(entry: entry)
            self.tableView.reloadData()
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.entries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let entry = manager.entries[indexPath.row]
        cell.textLabel?.text = entry.title
        return cell
    }
}
