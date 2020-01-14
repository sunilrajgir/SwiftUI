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
        List(newsArray) { news in
            Image(systemName:"\(news.newsImage)")
            VStack(alignment: .leading) {
                Text("\(news.headline)")
                    .font(.headline)
                Text("\(news.time)")
                    .font(.subheadline)
            }
        }
    }
}


struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(newsArray: testData)
    }
}
