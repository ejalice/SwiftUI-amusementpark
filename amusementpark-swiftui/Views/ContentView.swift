//
//  ContentView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            TabView {
                
                AttractionView(attractionData: AttractionData.sampleData)
                    .tabItem {
                        Image(systemName: "face.smiling")
                        Text("Attraction")
                    }
                
                MyPickView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("MyPick")
                    }
                
            } //~TabView
            .accentColor(.myBlue)
            
        } //~ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
