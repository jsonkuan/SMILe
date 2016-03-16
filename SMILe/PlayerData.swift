//
//  LeaderboardTableViewController.swift
//  SMILe
//
//  Created by Jason Kuan on 16/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//


class PlayerData {
    
    func getPlayerFromData() -> [Player] {
        
        var playerArray = [Player]()
        
        let Player1 = Player(name: "Pavlov", games: ["Bowling", "Race", "Golf"], score: 0)
        let Player2 = Player(name: "Jani", games: ["Bowling", "Race", "Golf"], score: 0)
        let Player3 = Player(name: "Katla", games: ["Bowling", "Race", "Golf"], score: 0)
        
        playerArray.append(Player1)
        playerArray.append(Player2)
        playerArray.append(Player3)
        
        return playerArray
    }
}
