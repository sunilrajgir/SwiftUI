//
//  NewsView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/13/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    let newsArray : [NewsModel]
    var body: some View {
        NavigationView {
            List(newsArray) { news in
                ExtractedView(news: news)
            }
            .navigationBarTitle("My First Swift List")
        }
    }
}


struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsArray: testData)
    }
}

struct ExtractedView: View {
    let news:NewsModel
    var body: some View {
        NavigationLink(destination: BasicView()) {
            Image(news.newsImage).cornerRadius(4.0)
            VStack(alignment: .leading) {
                Text("\(news.headline)")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(5.0)
                Text("\(news.time)")
                    .font(.subheadline)
                    .padding(5.0)
            }
        }
    }
}
