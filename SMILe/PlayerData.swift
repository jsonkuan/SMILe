class PlayerData {
    
    func getPlayerFromData() -> [Player] {
        
        var playerArray = [Player]()
        
        let Player1 = Player(name: "Pavlov", games: ["Bowling", "Race", "Hunting", "Golf"])
        let Player2 = Player(name: "Jani", games: ["Bowling", "Race", "Hunting", "Golf"])
        let Player3 = Player(name: "Katla", games: ["Bowling", "Race", "Hunting", "Golf"])
        
        
        playerArray.append(Player1)
        playerArray.append(Player2)
        playerArray.append(Player3)
        
        return playerArray
    }
}
