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
    @State var isAlertShown = false
    @State var isPresentationShown = false
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                Rectangle().padding(20.0).frame(width: 200.0, height: 200.0).foregroundColor(Color(red: self.sliderValue, green: self.sliderValue, blue: self.sliderValue))
                
                Slider(value: self.$sliderValue).foregroundColor(.gray)
                
                Button(action: {
                    self.isAlertShown = true
                }) {
                    Text("Button")
                }.alert(isPresented: self.$isAlertShown) {
                    Alert(title: Text("Thank You"), message: Text("We have learned button"))
                }
                
                Button(action: {
                    self.isPresentationShown = true
                }) {
                    Text("present view controller")
                }.sheet(isPresented:self.$isPresentationShown) {
                    NewsView(newsArray: testData)
                }
                
            }
            .navigationBarTitle("My First App", displayMode: .inline)
        }
        .padding(20.0)
    }
}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}
