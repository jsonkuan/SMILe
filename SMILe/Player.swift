//
//  LeaderboardTableViewController.swift
//  SMILe
//
//  Created by Jason Kuan on 16/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//


struct Player {
    
    var playerName : String
    var gameType : [String]
    var totalScore : Int
    
    init(name: String, games: [String], score: Int) {
        
        playerName = name
        gameType = games
        totalScore = score 
    }
}
