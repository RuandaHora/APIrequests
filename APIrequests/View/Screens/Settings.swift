import SwiftUI

struct Settings: View {
    struct contaRuan{
        
    }
    struct contaModel{
        
    }
    @State var modoaviao = false
    
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
                        HStack{
                            Image(systemName: "airplane")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.orange)
                                .cornerRadius(8)
                            Toggle("Modo Avião" ,isOn: $modoaviao)
                            
                        }
                        HStack{
                            
                            Image(systemName: "wifi")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(8)
                            Text("Wi-Fi")
                            Spacer()
                            Text("TP-LINK_FRE340")
                                .foregroundColor(Color.secondary)
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "bitcoinsign")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(8)
                            Text("Bluetooth")
                            Spacer()
                            Text("Ativado")
                                .foregroundColor(Color.secondary)
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(8)
                            Text("Celular")
                            Spacer()
                            Text("Desativado")
                                .foregroundColor(Color.secondary)
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "personalhotspot")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(8)
                            Text("Acesso Pessoal")
                            Spacer()
                            Text("Desativado")
                                .foregroundColor(Color.secondary)
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }.opacity(0.5)
                    }
                    Section{
                        HStack{
                            Image(systemName: "bell.badge.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.red)
                                .cornerRadius(8)
                            Text("Notificações")
                            Spacer()
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.pink)
                                .cornerRadius(8)
                            Text("Som e Tato")
                            Spacer()
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "moon.fill")
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.purple)
                                .cornerRadius(8)
                            Text("Foco")
                            Spacer()
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        HStack{
                            Image(systemName: "hourglass")
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                                .frame(width: 30, height: 30)
                                .background(Color.purple)
                                .cornerRadius(8)
                            Text("Tempo de Uso")
                            Spacer()
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
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
