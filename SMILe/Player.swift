struct Player {
    
    var playerName : String
    var gameType : [String]
    
    init(name: String, games: [String]) {
        
        playerName = name
        gameType = games
    }
}
