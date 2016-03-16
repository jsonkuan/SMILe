//
//  LeaderboardTableViewController.swift
//  SMILe
//
//  Created by Jason Kuan on 16/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//


import UIKit

class ScoreboardTableViewController: UITableViewController {
    
    var people: [Player] = PlayerData().getPlayerFromData()
    var gameScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }
    
    // TODO: - Get values for people[i].playerName && people[i].score

    // MARK: - TableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return people.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people[section].gameType.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return people[section].playerName
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.gameType.text = people[indexPath.section].gameType[indexPath.row]
        
        cell.scoreButton.tag = indexPath.row
        cell.scoreButton.addTarget(self, action: "pressedButton", forControlEvents: .TouchUpInside)
    // TODO: - Button Not working (try "isFirstResponder")
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! TableViewCell
        cell.scoreTextField.becomeFirstResponder()
    }
    
    // MARK: - IBActions
    
    @IBAction func pressedButton(sender: UIButton) {
        
     //  TODO: - Increment the scoreLabel when the button is pressed 
        
        gameScore++
    }
    
    
    // MARK: - My Functions 
    
    func calculateLeader() {
        // TODO: - Try using myArray.sort on the scores
    }
}
