//
//  DetailView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/15/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let news : NewsModel
    var body: some View {
            VStack(alignment: .leading, spacing: 10) {
                Text(news.headline)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                Text(news.time)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Image(news.newsImage)
                    .resizable().aspectRatio(contentMode: .fit)
                Text(news.headline)
            }
            .padding(10.0)
            .navigationBarTitle("News Detail", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(news: testData[0])
        }
    }
}
