import SwiftUI

struct Card2View: View {
    var body: some View {
            HStack {
                Card2ViewS()
            }
        }
    }

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}

struct Card2ViewS: View {
    @State var Card2 = Card2ViewModel()
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(Card2.user2.TextTop)
                    .foregroundColor(Color.white)
                    .font(.system(size: 25).bold())
                Spacer()
                Image(Card2.user2.IconeSwift)
                    .resizable()
                    .frame(width: 45, height: 45)
            }
            HStack{
                Text(Card2.user2.TextFoot)
                
            }.foregroundColor(Color(Card2.user2.blue))
                .font(.system(size: 20))
            Spacer()
            HStack{
                Image(Card2.user2.Cartoon1)
                    .resizable()
                    .cornerRadius(30)
                
            }
        }.padding(25)
            .frame(width: 350, height: 340)
            .background(Color(Card2.user2.blue))
            .cornerRadius(30)
    }
}
