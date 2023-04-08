import SwiftUI

struct PrincipalView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            ApiView()
                .tabItem{
                Image(systemName: "list.clipboard")
                Text("List")
            }
            FlowView()
                .tabItem{
                    Image(systemName: "apps.iphone")
                    Text("FLOW")
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
