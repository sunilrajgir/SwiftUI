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
        VStack(alignment: .leading) {
            Text(news.headline)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.black)
            Text(news.time)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
            Image(news.newsImage)
                .frame(width: 400.0, height: 200.0).aspectRatio(contentMode: .fill).cornerRadius(8)
            Text(news.headline)
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(news: testData[0])
    }
}
