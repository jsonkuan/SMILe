class PlayerData {
    
    func getPlayerFromData() -> [Player] {
        
        var playerArray = [Player]()
        
        let Pavlov = Player(name: "Pavlov", games: ["Bowling", "Race", "Hunting", "Golf"])
        let Jani = Player(name: "Jani", games: ["Bowling", "Race", "Hunting", "Golf"])
        let Katla = Player(name: "Katla", games: ["Bowling", "Race", "Hunting", "Golf"])
        
        
        playerArray.append(Pavlov)
        playerArray.append(Jani)
        playerArray.append(Katla)
        
        return playerArray
    }
}
