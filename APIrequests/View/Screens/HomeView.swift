import SwiftUI

struct HomeView: View {
    @State var secondary = CardViewModel()
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    NavigationLink (destination: Zoeira()){
                            Card1ViewS()
                                .shadow(color: .purple ,radius: 5)
                                .padding(.top, 30)
                    }
                    Card2ViewS()
                        .shadow(color: .blue, radius: 5)
                        .padding(.top, 15)
                        
                    Card1ViewS()
                        .shadow(color: .purple ,radius: 5)
                        .padding(.top, 15)
                        
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
