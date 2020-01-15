//
//  BasicView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/15/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI
import UIKit
struct BasicView: View {
    @State var sliderValue = Double.random(in: 0..<1)
    var body: some View {
        VStack {
            Rectangle().padding(20.0).frame(width: 200.0, height: 200.0).foregroundColor(Color(red: self.sliderValue, green: self.sliderValue, blue: self.sliderValue))
            Slider(value: self.$sliderValue).foregroundColor(.gray)
        }
    }
}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}
