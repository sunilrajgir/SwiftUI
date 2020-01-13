//
//  NewsView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/13/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        List(0..<5) { item in
            Image("test").foregroundColor(.gray)
            VStack(alignment: .leading) {
                Text("Sunil Kumar").foregroundColor(.black).fontWeight(.medium)
                Text("Director").foregroundColor(.gray).fontWeight(.light)
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
