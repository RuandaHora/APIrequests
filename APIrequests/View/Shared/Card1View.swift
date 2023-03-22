import SwiftUI

struct Card1View: View {
    var body: some View {
        HStack {
            Card1ViewS()
        }
    }
}

struct Card1View_Previews: PreviewProvider {
    static var previews: some View {
        Card1View()
    }
}

struct Card1ViewS: View {
    @State var CardViewM = CardViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(CardViewM.user.TextTop)
                    .foregroundColor(Color.white)
                    .font(.system(size: 25).bold())
                Spacer()
                Image(CardViewM.user.IconeSwift)
                    .resizable()
                    .frame(width: 45, height: 45)
            }
            HStack{
                Text(CardViewM.user.TextFoot)
                
            }.foregroundColor(Color(CardViewM.user.Secondarys))
                .font(.system(size: 20))
            Spacer()
            HStack{
                Image(CardViewM.user.Cartoon1)
                    .resizable()
                    .cornerRadius(30)
                
            }
        }.padding(25)
            .frame(width: 350, height: 340)
            .background(Color.purple)
            .cornerRadius(30)
    }
}
