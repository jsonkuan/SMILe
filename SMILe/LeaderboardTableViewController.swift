//
//  LeaderboardTableViewController.swift
//  SMILe
//
//  Created by Jason Kuan on 16/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//

import UIKit

class LeaderboardTableViewController: UITableViewController {

    var people: [Player] = PlayerData().getPlayerFromData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        if people.count < 2{
            return 1
        } else {
            return 2
        }
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        var string = String()
        if section == 0 {
            string = "Champion"
        } else if section == 1{
            string = "The Others"
        }
        return string
    
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        } else {
            return people.count - 1
        }
    }

    // TODO: - Display the players in array sorted by the highest score (people.totalScore)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Rank", forIndexPath: indexPath)

        if indexPath.section == 0 {
            cell.textLabel?.text =  people[0].playerName
        } else if indexPath.section == 1 {
            cell.textLabel?.text = people[1 + indexPath.row].playerName
        }

        return cell
    }


}
