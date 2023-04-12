import SwiftUI

struct ruandahora: View {
    var body: some View {
        HStack {
            ruanFlow()
                }
            }
        }

struct ruandahora_Previews: PreviewProvider {
    static var previews: some View {
        ruandahora()
    }
}

struct ruanFlow: View {
    @State var isFollowing = false
    @State var viewModel = ruanViewModel()
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack{
                Image("ruan 1")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(150)
                    .padding(10)
                
                Text(viewModel.user.name)
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.primary)
                
                Text(viewModel.user.nick)
                    .font(.system(size: 22, weight: .regular))
                    .foregroundColor(.secondary)
                
                Text(viewModel.userFollowers)
                    .font(.system(size: 75, weight: .light))
                    .foregroundColor(.primary)
                
                VStack{
                    //Seguir
                    Button{viewModel.isFollowing.toggle()} label: {
                        Label(!viewModel.isFollowing ? "Seguir" : "Seguindo", systemImage:!viewModel.isFollowing
                                ? "person.crop.circle.fill.badge.plus" : "checkmark.seal.fill")
                            .font(.title2)
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .tint(!viewModel.isFollowing ? .blue : .black)
                    Button{} label: {
                        Label("Mensagem", systemImage: "paperplane")
                            .font(.title2)
                            .frame(maxWidth: .infinity)
                    }.buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .disabled(!viewModel.isFollowing)
                        .tint(!viewModel.isFollowing ? .blue : .yellow)
                }.padding(20)
            }
        }
    }
}
