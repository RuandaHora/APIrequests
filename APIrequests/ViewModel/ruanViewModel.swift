import Foundation
//MARK: - VIEWMODEL

struct ruanViewModel {
    
    var isFollowing = false
    var userFollowers = String()
    
    init() {
        loadFollowers()
    }
    
    mutating func loadFollowers () {
        self.userFollowers = customizeNumber(value: user.followers )
    }
    var user = User(picture: "Ruan",
                    name: "Ruan da hora",
                    nick: "@RuandaHora",
                    followers: 1.339)
    func customizeNumber(value: Double) ->String{
       let formatter = NumberFormatter ()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        let shorten = formatter.string(for: value) ?? "0"
        return "\(shorten)K"
    }
    mutating func followToggle(){
        self.isFollowing.toggle()
        self.isFollowing ? (user.followers += 1) : (user.followers -= 1)
        loadFollowers()
        
    }
}
