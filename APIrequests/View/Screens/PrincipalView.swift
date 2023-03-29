import SwiftUI

struct PrincipalView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            Settings()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
