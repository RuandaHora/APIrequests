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
                    Image(systemName: "person.fill")
                    Text("Accont")
                }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
