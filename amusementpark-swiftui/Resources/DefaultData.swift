//
//  File.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/03.
//

import SwiftUI

struct DefaultData: View {

    //Define
    @Environment(\.managedObjectContext) var managedObjContext
    @State private var name = ""
    @State private var want = 0
    @State private var done = 0
    @State private var like = false
    @State private var people = ""
    @State private var height = ""
    @State private var descript = ""

    var attractionData: [AttractionData]
    
    init(attractionData: [AttractionData]) {
        self.attractionData = attractionData
    }

    
    var body: some View {
        Text("HI")
    }
    
    func initialize(){
        for i in attractionData {
            AttractionDataController().CreateAttraction(name: i.name, want: 0, done: 0, like: false, height: i.height, place: i.place, descript: i.descript, context: managedObjContext)
            
        //ForEach(attractionData, id: \.self.id){ i in
//            VStack {
//                Text(i.name)
//                Text(i.people)
//                Text(i.place)
//                Text(i.height)
//            }
            
        }
    }
}

struct DefaultData_Previews: PreviewProvider {
    static var previews: some View {
        DefaultData(attractionData: AttractionData.sampleData)
    }
}
