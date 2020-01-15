//
//  AnimationView.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/15/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import SwiftUI

struct AnimationView: View {
    @State var isZoomIn = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("bigPhoto")
                .resizable()
                .aspectRatio(contentMode: isZoomIn ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.isZoomIn.toggle()
                    }
            }
            .navigationBarTitle("Animation", displayMode: .inline)
            .frame(minWidth:0, maxWidth:.infinity, minHeight: 0, maxHeight: .infinity)
            
            if !isZoomIn {
                Image("toiIcon")
                     .padding(.all)
                     .transition(.move(edge: .leading))
            }
            
            
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AnimationView()
            }
            NavigationView {
                AnimationView()
            }
        }
    }
}
