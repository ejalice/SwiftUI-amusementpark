//
//  AttractionView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct AttractionView: View {

    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: []) var attractions: FetchedResults<Attraction>
    
    @State var selectedAttraction = Attraction()
    @State var changeView: Bool = false
    
    @AppStorage("likeDra") private var likeDra = UserDefaults.standard.bool(forKey: "likeDra")
    @AppStorage("likeMega") private var likeMega = UserDefaults.standard.bool(forKey: "likeMega")
    @AppStorage("likeBumper") private var likeBumper = UserDefaults.standard.bool(forKey: "likeBumper")
    @AppStorage("likeCrake") private var likeCrake = UserDefaults.standard.bool(forKey: "likeCrake")
    @AppStorage("likeTorna") private var likeTorna = UserDefaults.standard.bool(forKey: "likeTorna")
    @AppStorage("likePare") private var likePare = UserDefaults.standard.bool(forKey: "likePare")
    
    // Grid 형식으로 화면 채움.
    let columns = [GridItem(.adaptive(minimum: 150))]
    
    var attractionData: [AttractionData]
    
    //init() {
    init(attractionData: [AttractionData]) {
        self.attractionData = attractionData
    }


    var body: some View {
        NavigationView {
            ZStack {
                Color.myWhite.ignoresSafeArea()
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(attractionData, id:\.id) { attraction in
                            ZStack {
                                VStack {
                                    NavigationLink(destination: AttractionDetailView(attraction: attraction)){
                                        Image(attraction.name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 150, height: 100)
                                    }
                                
                                    // Attraction
                                    HStack {
                                        Text(attraction.name)
                                        Button(action: {
                                            if attraction.name == "드라켄" {
                                                likeDra.toggle()
                                            } else if attraction.name == "메가드롭" {
                                                likeMega.toggle()
                                            } else if attraction.name == "범퍼카" {
                                                likeBumper.toggle()
                                            } else if attraction.name == "크라크" {
                                                likeCrake.toggle()
                                            } else if attraction.name == "토네이도" {
                                                likeTorna.toggle()
                                            } else if attraction.name == "파에톤" {
                                                likePare.toggle()
                                            }
                                        }){
                                            if attraction.name == "드라켄" {
                                                Image(systemName:  likeDra == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            } else if attraction.name == "메가드롭" {
                                                Image(systemName:  likeMega == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            } else if attraction.name == "범퍼카" {
                                                Image(systemName:  likeBumper == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            } else if attraction.name == "크라크" {
                                                Image(systemName:  likeCrake == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            } else if attraction.name == "토네이도" {
                                                Image(systemName:  likeTorna == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            } else if attraction.name == "파에톤" {
                                                Image(systemName: likePare == true ? "heart.fill" : "heart")
                                                    .foregroundColor(Color.myRed)
                                            }
                                        }
                                    }
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
        AttractionView(attractionData: AttractionData.sampleData)
    }
}
