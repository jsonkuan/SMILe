


import UIKit

class ScoreboardTableViewController: UITableViewController {
    
    var players: [Player] = PlayerData().getPlayerFromData()

    override func viewDidLoad() {
        super.viewDidLoad()

     }


    // MARK: - TableViewDataSource

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return players.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players[section].gameType.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return players[section].playerName
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GameTypeCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = players[indexPath.section].gameType[indexPath.row]
        
        return cell
    }
}
