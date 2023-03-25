import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Section{
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 15))
                                .foregroundColor(Color.secondary)
                            Text("Buscar")
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack {
                        Image("Ruan")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(100)
                        VStack (alignment: .leading){
                            HStack{
                                Text("Ruan Pablo Silva da Hora")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.primary)
                               
                            }
                            Text("ID Apple, iCloud, Mídia e Compras")
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
                        Text("3")
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .background(Color.red)
                            .cornerRadius(30)
                            
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
