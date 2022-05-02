//
//  AttractionView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct AttractionView: View {
    
    var data = Array(1...29)//.map{"목록\($0)"}
    
    // Grid 형식으로 화면 채움.
    let columns = [GridItem(.adaptive(minimum: 150))]
    //Grid layout size를 최소 100으로 설정.
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.myWhite.ignoresSafeArea()
                ScrollView {
            
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id:\.self) { i in
                            SquareView()
                        } //~ForEach
                    } //~LazyVGrid
                    .padding(.horizontal)
            
                } // ~ScrollView
                .navigationTitle("Attraction 🎡")
            }
        } //~NavigationView
    }
}

struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView()
    }
}
