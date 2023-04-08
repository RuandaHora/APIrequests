import SwiftUI

struct FlowView: View {
    @State var viewModel = profileViewModel()
    var body: some View {
        
        NavigationView {
            VStack{
                List{
                    NavigationLink(destination: gustavoFlow(viewModel: $viewModel)){
                        Text("@GustavodaHora")
                            .font(.system(size:25, weight: .light))
                            .foregroundColor(.secondary)
                        
                    }
                    NavigationLink(destination: ruanFlow()){
                        Text("@RuandaHora")
                            .font(.system(size:25, weight: .light))
                            .foregroundColor(.secondary)
                        
                    }
                }.navigationTitle("📲 FLOW")
            }
        }
    }
}
struct FlowView_Previews: PreviewProvider {
    static var previews: some View {
        FlowView()
    }
}
