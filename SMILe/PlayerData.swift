//
//  LeaderboardTableViewController.swift
//  
//  github.com/jsonkuan/SMILe
//
//  Created by Jason Kuan on 16/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//


class PlayerData {
    
    func getPlayerFromData() -> [Player] {
        
        var playerArray = [Player]()
        let GameSet1 = ["Bowling", "Race", "Golf"]
        
        
        let Player1 = Player(name: "Pavlov",   games: GameSet1, score: 251)
        let Player2 = Player(name: "Jani",     games: GameSet1, score: 29)
        let Player3 = Player(name: "Katla",    games: GameSet1, score: 250)
        let Player4 = Player(name: "Jason",    games: GameSet1, score: 1)
        let Player5 = Player(name: "Linda",    games: GameSet1, score: 159)
        let Player6 = Player(name: "Darko",    games: GameSet1, score: 500)
        let Player7 = Player(name: "Miroslaw", games: GameSet1, score: 123)
        let Player8 = Player(name: "Malin",    games: GameSet1, score: 6)
        let Player9 = Player(name: "Jocke",    games: GameSet1, score: 18)
       
        //TODO: - Put this in a loop
        
        playerArray.append(Player1)
        playerArray.append(Player2)
        playerArray.append(Player3)
        playerArray.append(Player4)
        playerArray.append(Player5)
        playerArray.append(Player6)
        playerArray.append(Player7)
        playerArray.append(Player8)
        playerArray.append(Player9)
        
        return playerArray
    }
}
