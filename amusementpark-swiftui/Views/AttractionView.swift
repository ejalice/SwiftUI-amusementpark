//
//  AttractionView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct AttractionView: View {
    
    var data = Array(1...10).map{"목록\($0)"}
    
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
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 170)
                                    .shadow(color: .myGray, radius: 2, x: 0, y: 1)
                                VStack {
                                    Image(systemName: "heart")
                                    HStack {
                                        Text(i)
                                        Image(systemName: "heart.fill")
                                    } //~HStack
                                } //~VStack
                            } //~ZStack
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
