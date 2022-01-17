//
//  ContentView.swift
//  UIFontLoaderDemo (WatchOS) WatchKit Extension
//
//  Created by Brian Strobach on 1/14/22.
//

import SwiftUI
import UIFontLoader

struct ContentView: View {
    var body: some View {
        Text("Loading Fonts")
            .padding().onAppear {
                FontLoader.loadAllFonts()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
