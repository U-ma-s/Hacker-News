import Foundation
import SwiftUI
import WebKit

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
