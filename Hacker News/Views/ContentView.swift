import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()//@Publishedに設定したプロパティのリスナー
    
    
    var body: some View {
        NavigationView {
            //List(posts, rowContent: {post in Text(post.title)})
            //List(posts){Text($0.title)}
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {//Listの各セルのLabel
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            
            .navigationTitle("Hacker News")
        }
        .onAppear {//viewdidLoad()的な
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "こんにちは"),
//    Post(id: "3", title: "Bonjour")
//]
