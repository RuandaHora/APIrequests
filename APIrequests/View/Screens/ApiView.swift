import SwiftUI
struct UserModels: Codable, Identifiable {
    var id: UUID
    var name: String
    var userName: String
    var email: String
}
struct ApiView: View {
    @State private var users = [UserModels]()
    
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                VStack{
                    Text(user.name).font(.headline).foregroundColor(Color.green)
                    Text(user.userName).font(.headline).foregroundColor(Color.secondary)
                    Text(user.email).font(.headline).foregroundColor(Color.secondary)
                }
            }.navigationTitle("Users API").task {
                await fetchData()
            }
        }
        
        }
        func fetchData() async {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{
                print("This URL is not working!")
                return
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                if let decodedResponse = try? JSONDecoder().decode([UserModels].self, from: data) {
                    users = decodedResponse
                }
                
            } catch {
                print("These data are not valid!")
            }
        }
        
    }
    
    struct ApiView_Previews: PreviewProvider {
        static var previews: some View {
            ApiView()
        }
    }
