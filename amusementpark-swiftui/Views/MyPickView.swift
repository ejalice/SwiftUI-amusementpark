//
//  MyPickView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct MyPickView: View {
    @State var selectedSide = 0
    
    @State private var doneName = ""
    @State private var wantName = ""
    @State private var korName = ""
    
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
                    
                    PickListView(selectedSide: $selectedSide)
                } //~VStack
                
            }//~ZStack
            .navigationTitle("My Pick")
            .padding()
        }//~NavigationView
    }//~body
}//~MyPickView


struct MyPickView_Previews: PreviewProvider {
    static var previews: some View {
        MyPickView()
    }
}
