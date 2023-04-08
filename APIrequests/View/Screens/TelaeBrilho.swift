import SwiftUI

struct Tela_e_Brilho: View {
    @State var automaticoLigado = true
    @State var automaticoLigado2 = false
    @State var automaticoLigado3 = false
    @State var elevarParaDesoertar = false
    @State var clara = false
    @State var escura = true
    
    @State var brilhoDaTela = 50.0
    
    @State var Dark = "DarkMode"
    
    let rodapeBrilho = "Adapte a tela do iPhone automaticamente de acordo com a iluminacão ambiente para que as cores apareçam consistentemente em ambientes diferentes."
    let rodapeZoom = "Escolha uma visualização para o iPhone. Texto Maior mostra os controles ampliados. Padrão mostra mais conteúdo."
    
    let teste = "Dark"
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 0, height: 0)
                .background(Color("DarkMode"))
            
            VStack{
                Form{
                    
                    Section(header: Text("APARÊNCIA")){
                        HStack{
                            VStack {
                                HStack{
                                    Spacer()
                                    VStack{
                                        Image("Aparencia 1")
                                            .resizable()
                                            .frame(width: 80, height: 150)
                                            .cornerRadius(15)
                                        Text("Clara")
                                    }
                                    Spacer()
                                    VStack{
                                        Image("Aparencia")
                                            .resizable()
                                            .frame(width: 80, height: 150)
                                            .cornerRadius(15)
                                        Text("Escura")
                                    }
                                    Spacer()
                                }
                            }
                        }
                        HStack{
                            Toggle("Automática" ,isOn:$automaticoLigado)
                            
                        }
                    }
                    
                    HStack{
                        Text("Tamanho do Texto")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Icones1"))
                            .font(.footnote)
                    }
                    HStack{
                        Toggle("Negrito" ,isOn:$automaticoLigado2)
                    }
                    Section(header: Text("BRILHO"), footer: Text(rodapeBrilho)){
                        HStack{
                            Image(systemName: "sun.min.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("Icones2"))
                            
                            Slider(value: $brilhoDaTela, in:0...100)
                                .onChange(of: brilhoDaTela) { value in print(brilhoDaTela)}
                            
                            Image(systemName: "sun.max.fill")
                                .resizable()
                                .frame(width: 22, height: 22)
                                .foregroundColor(Color("Icones2"))
                        }
                        HStack{
                            Toggle("True Tone" ,isOn:$automaticoLigado3)
                        }
                    }
                    Section{
                        HStack{
                            Text("Night Shift ")
                            Spacer()
                            Text("22:00 até 07:00")
                                .foregroundColor(Color.gray)
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("Icones1"))
                                .font(.footnote)
                        }
                    }
                        HStack{
                            Text("Bloqueio Automático")
                             Spacer()
                            Text("2 minutos")
                                .foregroundColor(Color.gray)
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("Icones1"))
                                .font(.footnote)
                        }
                    HStack{
                        Toggle("Elevar para Despertar" ,isOn:$elevarParaDesoertar)
                    }
                    Section(header: Text("Tela"), footer: Text(rodapeZoom)){
                        HStack{
                            NavigationLink(destination: ZoomDaTela()){
                                    Text("Zoom da Tela")
                                    .foregroundColor(Color.primary)
                                
                                Text("                                          ")
                                Button(action: {}){
                                    Text("Padrão")
                                }.foregroundColor(Color.gray)
                            }
                        }
                    }
                    
                }
            }
        }
            
        }
    }

struct Tela_de_Brilho_Previews: PreviewProvider {
    static var previews: some View {
        Tela_e_Brilho()
    }
}
