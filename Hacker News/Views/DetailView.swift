import SwiftUI
import WebKit

struct DetailView: View {

    let url:String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct WebView: UIViewRepresentable{

    let urlString: String?


    /// 表示するViewのインスタンスを生成
    /// SwiftUIで使用するUIKitのViewを返す
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString {//URLが実際にコンテンツを持っているか確認
            if let url = URL(string: safeURL){//String -> URL
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
