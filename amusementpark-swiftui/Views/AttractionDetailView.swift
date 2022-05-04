//
//  AttractionDetailView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct AttractionDetailView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    //@State var want: Int64 = 0
    @State var editMode: Bool = false
    
    @AppStorage("wantDra") private var wantDra = UserDefaults.standard.integer(forKey: "wantDra")
    @AppStorage("wantMega") private var wantMega = UserDefaults.standard.integer(forKey: "wantMega")
    @AppStorage("wantBumper") private var wantBumper = UserDefaults.standard.integer(forKey: "wantBumper")
    @AppStorage("wantCrake") private var wantCrake = UserDefaults.standard.integer(forKey: "wantCrake")
    @AppStorage("wantTorna") private var wantTorna = UserDefaults.standard.integer(forKey: "wantTorna")
    @AppStorage("wantPare") private var wantPare = UserDefaults.standard.integer(forKey: "wantPare")
    
    
    var attraction: AttractionData
    
    
    init(attraction: AttractionData) {
        UITableView.appearance().backgroundColor = .clear
        self.attraction = attraction
    }
    
    var body: some View {
            ZStack {
                Color.myWhite.ignoresSafeArea()

                Form {
                    HStack {
                        Spacer()
                        Image(attraction.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 260, height: 150)
                        Spacer()
                    }

                        //Information
                        Section(header: Text("Information")) {
                            HStack {
                                Text("위치")
                                Spacer()
                                Text(attraction.place)
                            }
                            HStack {
                                Text("탑승인원")
                                Spacer()
                                Text(attraction.people)
                            }
                            HStack {
                                Text("키제한")
                                Spacer()
                                Text(attraction.height)
                            }
                            HStack {
                                Text("특징")
                                Spacer()
                                Text(attraction.descript)
                            }
                        }
                    
                        .textCase(nil)
                        
                        // Plan
                        Section(header: Text("Plan")) {
                            if editMode {
                            HStack {
                                Text("탈 횟수")
                                Spacer()
                                    .frame(width: 50)
                                
                                if attraction.name == "드라켄" {
                                    Stepper(value: $wantDra, in: 0...10) {
                                        Text("\(wantDra)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                } else if attraction.name == "메가드롭" {
                                    Stepper(value: $wantMega, in: 0...10) {
                                        Text("\(wantMega)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                } else if attraction.name == "범퍼카" {
                                    Stepper(value: $wantBumper, in: 0...10) {
                                        Text("\(wantBumper)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                } else if attraction.name == "크라크" {
                                    Stepper(value: $wantCrake, in: 0...10) {
                                        Text("\(wantCrake)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                } else if attraction.name == "토네이도" {
                                    Stepper(value: $wantTorna, in: 0...10) {
                                        Text("\(wantTorna)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                } else if attraction.name == "파에톤" {
                                    Stepper(value: $wantPare, in: 0...10) {
                                        Text("\(wantPare)")
                                            .foregroundColor(Color.gray)
                                        Text("회")
                                    }
                                }
                            }
                            } else {
                                HStack {
                                    Text("탈 횟수")
                                    Spacer()
                                        .frame(width: 50)
                                    if attraction.name == "드라켄" {
                                        Text("\(wantDra)")
                                    } else if attraction.name == "메가드롭" {
                                        Text("\(wantMega)")
                                    } else if attraction.name == "범퍼카" {
                                        Text("\(wantBumper)")
                                    } else if attraction.name == "크라크" {
                                        Text("\(wantCrake)")
                                    } else if attraction.name == "토네이도" {
                                        Text("\(wantTorna)")
                                    } else if attraction.name == "파에톤" {
                                        Text("\(wantPare)")
                                    }
                                    
                                    Text("회")
                                }
                            }
//                            Button(action: {
//                                AttractionDataController().CreateAttraction(name: attraction.name, want: 0, context: managedObjContext)
//                            }){
//                                Text("ADD")
//                            }
                        }
                        .textCase(nil)
                    }//~Form
                .listStyle(InsetGroupedListStyle())
                
            }//~ZStack

            .navigationTitle(attraction.name)
            .navigationBarItems(trailing: Button(editMode==false ? "Edit" : "Save"){
                editMode.toggle()
            })
    }//~body
    
}//~struct


struct AttractionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetailView(attraction: AttractionData.sampleData[0])
    }
}
