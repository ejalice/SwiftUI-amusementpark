////
////  MainView.swift
////  amusementpark-swiftui
////
////  Created by eunji on 2022/05/04.
////
//
//import SwiftUI
//
//struct MainView: View {
//
//    @Environment(\.managedObjectContext) var managedObjContext
//    @State var changeView: Bool = false
//    var attractionData: [AttractionData]
//    
//    //init() {
//    init(attractionData: [AttractionData]) {
//        self.attractionData = attractionData
//    }
//    //ForEach(attractionData, id:\.id) { attraction in
//    var body: some View {
//        NavigationView {
//        VStack {
//            Text("오늘은 J")
//            Button(action: {
//                self.changeView.toggle()
//                for attraction in attractionData {
//                    AttractionDataController().CreateAttraction(name: attraction.name, want: 0, context: managedObjContext)}
//            }) {Text("경주월드")}
//            NavigationLink(destination: AttractionView(attractionData: attractionData), isActive: $changeView) {EmptyView()}.disabled(false)
//        }
//    }
//    }
//}
//
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView(attractionData: AttractionData.sampleData)
//    }
//}
