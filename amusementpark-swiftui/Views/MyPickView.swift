//
//  MyPickView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct MyPickView: View {
    @State private var selectedSide = 0
    //@State private var picked = ["드라켄", "범퍼카", "크라크", "메가드롭", "파에톤"]//배열생성
    
    @FetchRequest(sortDescriptors:[]) var picks: FetchedResults<Attraction>
    @State var selectedAttraction = Attraction()
    
    @AppStorage("doneDra") private var wantDra = UserDefaults.standard.integer(forKey: "doneDra")
    @AppStorage("doneMega") private var wantMega = UserDefaults.standard.integer(forKey: "doneMega")
    @AppStorage("doneBumper") private var wantBumper = UserDefaults.standard.integer(forKey: "doneBumper")
    @AppStorage("doneCrake") private var wantCrake = UserDefaults.standard.integer(forKey: "doneCrake")
    @AppStorage("doneTorna") private var wantTorna = UserDefaults.standard.integer(forKey: "doneTorna")
    @AppStorage("donePare") private var wantPare = UserDefaults.standard.integer(forKey: "donePare")
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        
        
        NavigationView {
            ZStack {
            
                Color.myWhite.ignoresSafeArea()
                
                VStack {
                    Picker(selection: $selectedSide, label: Text("My State"), content: {
                        Text("All").tag(0)
                        Text("Want").tag(1)
                        Text("Done").tag(2)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    List {
                        if selectedSide == 0 {
                            if UserDefaults.standard.integer(forKey: "wantDra")>0 {
//                                Text("wantDra: \(UserDefaults.standard.integer(forKey: "wantDra"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantMega")>0 {
//                                Text("wantMega: \(UserDefaults.standard.integer(forKey: "wantMega"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantBumper")>0 {
//                                Text("wantBumper: \(UserDefaults.standard.integer(forKey: "wantBumper"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantCrake")>0 {
//                                Text("wantCrake: \(UserDefaults.standard.integer(forKey: "wantCrake"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantTorna")>0 {
//                                Text("wantTorna: \(UserDefaults.standard.integer(forKey: "wantTorna"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantPare")>0 {
//                                Text("wantPare: \(UserDefaults.standard.integer(forKey: "wantPare"))")
                            }
                        
                        
                        } else if selectedSide == 1 {
                            if UserDefaults.standard.integer(forKey: "wantDra")>UserDefaults.standard.integer(forKey: "doneDra") {
//                                Text("wantDra: \(UserDefaults.standard.integer(forKey: "wantDra"))\n doneDra: \(UserDefaults.standard.integer(forKey: "doneDra"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantMega")>UserDefaults.standard.integer(forKey: "doneMega") {
//                                Text("wantMega: \(UserDefaults.standard.integer(forKey: "wantMega"))\n doneMega: \(UserDefaults.standard.integer(forKey: "doneMega"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantBumper")>UserDefaults.standard.integer(forKey: "doneBumper") {
//                                Text("wantBumper: \(UserDefaults.standard.integer(forKey: "wantBumper"))\n doneBumper: \(UserDefaults.standard.integer(forKey: "doneBumper"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantCrake")>UserDefaults.standard.integer(forKey: "doneCrake") {
//                                Text("wantCrake: \(UserDefaults.standard.integer(forKey: "wantCrake"))\n doneCrake: \(UserDefaults.standard.integer(forKey: "doneCrake"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantTorna")>UserDefaults.standard.integer(forKey: "doneTorna") {
//                                Text("wantTorna: \(UserDefaults.standard.integer(forKey: "wantTorna"))\n doneTorna: \(UserDefaults.standard.integer(forKey: "doneTorna"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantPare")>UserDefaults.standard.integer(forKey: "donePare") {
//                                Text("wantPare: \(UserDefaults.standard.integer(forKey: "wantPare"))\n donePare: \(UserDefaults.standard.integer(forKey: "donePare"))")
                            }
                        
                            
                        } else {
                            if UserDefaults.standard.integer(forKey: "wantDra")==UserDefaults.standard.integer(forKey: "doneDra") {
//                                Text("wantDra: \(UserDefaults.standard.integer(forKey: "wantDra"))\n doneDra: \(UserDefaults.standard.integer(forKey: "doneDra"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantMega")==UserDefaults.standard.integer(forKey: "doneMega") {
//                                Text("wantMega: \(UserDefaults.standard.integer(forKey: "wantMega"))\n doneMega: \(UserDefaults.standard.integer(forKey: "doneMega"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantBumper")==UserDefaults.standard.integer(forKey: "doneBumper") {
//                                Text("wantBumper: \(UserDefaults.standard.integer(forKey: "wantBumper"))\n doneBumper: \(UserDefaults.standard.integer(forKey: "doneBumper"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantCrake")==UserDefaults.standard.integer(forKey: "doneCrake") {
//                                Text("wantCrake: \(UserDefaults.standard.integer(forKey: "wantCrake"))\n doneCrake: \(UserDefaults.standard.integer(forKey: "doneCrake"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantTorna")==UserDefaults.standard.integer(forKey: "doneTorna") {
//                                Text("wantTorna: \(UserDefaults.standard.integer(forKey: "wantTorna"))\n doneTorna: \(UserDefaults.standard.integer(forKey: "doneTorna"))")
                            }
                            if UserDefaults.standard.integer(forKey: "wantPare")==UserDefaults.standard.integer(forKey: "donePare") {
//                                Text("wantPare: \(UserDefaults.standard.integer(forKey: "wantPare"))\n donePare: \(UserDefaults.standard.integer(forKey: "donePare"))")
                            }
                        }
                    }
                    
                }//~VStack
                .navigationTitle("My Pick")

            .padding()
            }
        }//~NavigationView

        
    }//~body
}//~MyPickView



struct MyPickView_Previews: PreviewProvider {
    static var previews: some View {
        MyPickView()
    }
}
