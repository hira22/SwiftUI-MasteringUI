//
//  ContentView.swift
//  BluePrtints
//
//  Created by hiraoka on 2021/01/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Color {
    static let foregroundColor = Color.init("ForegroundColor")
    static let backgroundColor = Color.init("BackgroundColor")
}
