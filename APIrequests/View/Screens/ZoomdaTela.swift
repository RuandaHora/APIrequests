import SwiftUI

struct Zoom_da_Tela: View {
    var body: some View {
        ZStack{
            ZoomDaTela()
        }.navigationTitle("Zoom da Tela")
    }
}

struct Zoom_da_Tela_Previews: PreviewProvider {
    static var previews: some View {
        Zoom_da_Tela()
    }
}

struct ZoomDaTela: View {
    var body: some View {
        VStack{
            HStack{
                Form{
                    HStack{
                        VStack {
                            Image("Aparencia 1")
                                .resizable()
                                .frame(width: 130, height: 240)
                            .cornerRadius(20)
                        Text("Texto Maior")
                        }
                        
                        Spacer()
                        VStack {
                            Image("Aparencia")
                                .resizable()
                                .frame(width: 130, height: 240)
                            .cornerRadius(20)
                            Text("Padrão")
                        }
                    }
                }
            }
        }
    }
}
