//
//  ContentView.swift
//  ScrollViewIntroduction
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            // Tab 1
            ZStack {
                Color.blue.colorMultiply(.red).edgesIgnoringSafeArea(.top)
                VStack(spacing: 20) {
                    Text("TabView")
                        .font(.largeTitle).foregroundColor(.white)
                    Text("TabItem Colors")
                        .font(.title).foregroundColor(.gray)
                    Text("Set the color of the active tab item by setting the accent color for the TabView.")
        }
            }.tabItem {
                Image(systemName: "star.fill")
        }
        // Tab 2
            Text("Second Screen").tabItem {
                Image(systemName: "moon.fill")
            }.foregroundColor(Color.red)
            // Tab 3
            Text("Third Screen").tabItem {
                Image(systemName: "sun.min.fill")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
