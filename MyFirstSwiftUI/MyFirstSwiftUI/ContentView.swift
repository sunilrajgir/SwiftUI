//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/12/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Target Color Block")
                Text("Guess Color Block")
            }
            
            Text("Hit me button")

            VStack {
              Text("Red slider")
              Text("Green slider")
              Text("Blue slider")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
