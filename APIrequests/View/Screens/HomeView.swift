import SwiftUI

struct HomeView: View {
    @State var secondary = CardViewModel()
    var body: some View {
        NavigationView{
            ScrollView(){
                VStack{
                    Card1ViewS()
                        .padding(30)
                        .shadow(color: .purple ,radius: 5)
                    Card2ViewS()
                        .padding(15)
                        .shadow(color: .gray, radius: 5)
                    Card1ViewS()
                        .padding(15)
                        .shadow(color: .purple ,radius: 5)
                }.navigationTitle("Courses")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
