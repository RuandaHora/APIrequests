import SwiftUI

struct gustavoMensage: View {
    var body: some View {
        HStack {
            MsPrivado1()
        }
    }
}

struct MsPrivado1View_Previews: PreviewProvider {
    static var previews: some View {
        gustavoMensage()
    }
}

struct MsPrivado1: View {
   @State var mensageVM = mensageGustavoVM()
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            VStack{
                HStack{
                    Text("            ")
                        Image("gustavo")
                            .resizable()
                            .background(Image("Laranja"))
                            .frame(width: 50, height: 50)
                            .cornerRadius(100)
                            .padding(8)
                    Text(mensageVM.user.name)
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                        Spacer()
                    
                }
                Spacer()
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 500, height: 60)
                        .background(.ultraThinMaterial)
                    
                        .overlay(
                            HStack{
                                Text("")
                                Button(action: {}){
                                    Image(systemName: "plus" )
                                        .foregroundColor(.blue)
                                        .font(.title)
                                }
                                TextField("Digite", text: self.$mensageVM.search)
                                    
                                    .padding(15)
                                    .frame(width: 220, height: 30)
                                    .foregroundColor(.primary)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(20)
                                Text("")
                                Button(action: {}){
                                    Image(systemName: "brazilianrealsign.circle" )
                                        .foregroundColor(.blue)
                                        .font(.title2)
                                }
                                Text("")
                                Button(action: {}){
                                    Image(systemName: "camera" )
                                        .foregroundColor(.blue)
                                        .font(.title2)
                                }
                                Text("")
                                Button(action: {}){
                                    Image(systemName: "mic" )
                                        .foregroundColor(.blue)
                                        .font(.title2)
                                    Text("")
                                }
                            }
                        )
                    
                }
                .onTapGesture {
                    mensageVM.show.toggle()
                }
            }
        }
    }
}
