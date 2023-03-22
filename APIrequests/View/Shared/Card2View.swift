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
    //MARK: ViewModel
    struct card2ViewModel = {
        var Card2Models: 
    }
        var IconeSwift = "Swift"
        var TextTop = "Phototype Designes in SwiftUI"
        var TextFoot = "18 Sections"
        var Cartoon1 = "Designe1"
        var Secondary = "Secondary"
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(TextTop)
                    .foregroundColor(Color.white)
                    .font(.system(size: 25).bold())
                Image(IconeSwift)
                    .resizable()
                    .frame(width: 45, height: 45)
            }
            HStack{
                Text(TextFoot)
                
            }.foregroundColor(Color(Secondary))
                .font(.system(size: 20))
            Spacer()
            HStack{
                Image(Cartoon1)
                    .resizable()
                    .cornerRadius(30)
                
            }
        }.padding(25)
            .frame(width: 350, height: 350)
            .background(Color(Secondary))
            .cornerRadius(30)
    }
}
