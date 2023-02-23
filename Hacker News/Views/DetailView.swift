//
//  DetailView.swift
//  Hacker News
//
//  Created by 杉下友麻 on 2023/02/23.
//

import SwiftUI

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
