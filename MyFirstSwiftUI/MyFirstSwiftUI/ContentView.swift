//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/12/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    @State var showAlert = false
    
    func computeScore() -> Int {
      let rDiff = rGuess - rTarget
      let gDiff = gGuess - gTarget
      let bDiff = bGuess - bTarget
      let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
      return Int((1.0 - diff) * 100.0 + 0.5)
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Rectangle().foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget))
                    Text("Match This Color")
                }
                
                VStack {
                    Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess))
                    HStack {
                        Text("R:XXX")
                        Text("G:XXX")
                        Text("B:XXX")
                    }
                }
            }
            
            Button(action: {
                self.showAlert = true
            }) {
                Text("Hit me")
            }.alert(isPresented: $showAlert) { () -> Alert in
                Alert(title:Text("Your Score"), message: Text("\(computeScore())"))
            }
                        
            HStack {
                Text("0").foregroundColor(.red)
                Slider(value: $rGuess)
                Text("255").foregroundColor(.red)
            }
            
            HStack {
                Text("0").foregroundColor(.green)
                Slider(value: $gGuess)
                Text("255").foregroundColor(.green)
            }
            
            HStack {
                Text("0").foregroundColor(.blue)
                Slider(value: $bGuess)
                Text("255").foregroundColor(.blue)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5).previewLayout(.fixed(width: 568, height: 320))
    }
}
