//
//  ViewController.swift
//  TableRowAction
//
//  Created by Pablo Bendersky on 9/25/14.
//  Copyright (c) 2014 Pablo Bendersky. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "MyIdentifier"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {

        let deleteClosure = { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            println("Delete closure called")
        }
        
        let moreClosure = { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            println("More closure called")
        }
        
        let deleteAction = UITableViewRowAction(style: .Default, title: "Delete", handler: deleteClosure)
        let moreAction = UITableViewRowAction(style: .Normal, title: "More", handler: moreClosure)
        
        return [deleteAction, moreAction]
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        // Intentionally blank. Required to use UITableViewRowActions
    }

}

