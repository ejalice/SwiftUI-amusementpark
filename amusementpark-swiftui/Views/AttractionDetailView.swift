//
//  AttractionDetailView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct AttractionDetailView: View {
    
    @State var infoList: [String] = ["위치", "탑승인원", "키제한", "특징"]
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.myWhite.ignoresSafeArea()
                //VStack {
//                Image("드라켄")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 260, height: 150)
                List {
//                    Section(header: Text("Image")) {
                    HStack {
                        Spacer()
                    Image("드라켄")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 260, height: 150)
                        Spacer()
                    //1246 × 858
                    }
//                    }

                        
                        //Information
                        Section(header: Text("Information")) {
                            // ForEach로 해도 상관없고, List로 해도 상관없음.
                            // 단, List안에 ForEach로 하면, onDelete 추가 했을 때, 삭제할 수 있음.
                            //HStack {
                            ForEach(infoList, id: \.self) { info in
                                HStack{
                                    Text(info)
                                    Spacer()
                                    Text(info)

                                }
                            }

                        }
                    
                        .textCase(nil)
                        
                        // Plan
                        Section(header: Text("Plan")) {
                            Text("HI")
                        }
                        .textCase(nil)
                    }//~Form
                .listStyle(InsetGroupedListStyle())
                
            }//~ZStack
            //}
            .navigationTitle("드라켄")
            .navigationBarItems(trailing: Button("Edit"){})
        }//~NavigationView
    }//~body
    
}//~struct

struct AttractionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetailView()
    }
}
