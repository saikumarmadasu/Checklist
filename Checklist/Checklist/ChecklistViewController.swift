//
//  ViewController.swift
//  Checklist
//
//  Created by sai kumar madasu on 9/12/19.
//  Copyright © 2019 sai kumar madasu. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0Item: checklistItem
    
    required init?(coder aDecoder: NSCoder) {
        row0Item = checklistItem()
        row0Item.text = "Take a jog"
        super .init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(25) as? UILabel {
            
            if indexPath.row % 5 == 0 {
                label.text = "Take a jog"
            }else if indexPath.row % 4 == 0 {
                label.text = "Watch a movie"
            }else if indexPath.row % 3 == 0 {
                label.text = "Make sandwich"
            }else if indexPath.row % 2 == 0 {
                label.text = "complete ios task"
            }else if indexPath.row % 1 == 0 {
                label.text = "Go to gym"
}
}
return cell
}
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType == .checkmark
                    
                
            }else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
}
