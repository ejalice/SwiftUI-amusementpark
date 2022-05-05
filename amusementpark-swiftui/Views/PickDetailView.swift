//
//  PickDetailView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/04.
//

import SwiftUI



struct PickDetailView: View {
    
    @State var editMode2: Bool = false
    @State var want: Int = 0
    @State var done: Int = 0
    @State var name: String
    
//    init() {
//        UITableView.appearance().backgroundColor = .clear
//    }
    
    var body: some View {
        ZStack {
            Color.myWhite.ignoresSafeArea()

            Form {
            Section(header: Text("현재 상태")) {
                
                if editMode2 {
                    HStack {
                        Text("탈 횟수")
                        Spacer()
                            .frame(width:50)
                        Stepper(value: $want, in: 0...10) {
                            Text("\(want)").foregroundColor(Color.gray)
                            Text("회")
                        }
                    }
                    HStack {
                        Text("탄 횟수")
                        Spacer()
                            .frame(width:50)
                        Stepper(value: $done, in: 0...want) {
                            Text("\(done)").foregroundColor(Color.gray)
                            Text("회")
                        }
                    }
                } else {
                    HStack {
                        Text("탈 횟수")
                        Spacer()
                            .frame(width: 50)
                        Text("\(want)")
                        Text("회")
                    }
                    HStack {
                        Text("탄 횟수")
                        Spacer()
                            .frame(width: 50)
                        Text("\(done)")
                        Text("회")
                    }
                }
                
            }
        }
            
        .navigationTitle(name)
        .navigationBarItems(trailing: Button(editMode2==false ? "Edit" : "Save"){editMode2.toggle()})

    }
    }
}

//struct PickDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickDetailView()
//    }
//}
