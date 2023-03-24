import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    HStack {
                        VStack (alignment: .leading){
                            HStack{
                                Image("Ruan")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(100)
                                Text("Ruan Pablo Silva da Hora")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.primary)
                               
                            }
                            Text("                  Configurações da conta")
                                .font(.system(size: 12))
                                .foregroundColor(Color.primary)
                        }
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 15))
                            .foregroundColor(Color.secondary)
                    }
                    HStack{
                        Text("Sujestões de ID Apple")
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 15))
                            .foregroundColor(Color.secondary)
                    }
                    Section{
                        Text("Teste")
                    }
                }
            }.navigationTitle("Settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
