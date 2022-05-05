//
//  PickDetailView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/04.
//

import SwiftUI



struct PickDetailView: View {
    
    @State var editMode2: Bool = false
   
    @State var korName: String
    @State var wantName: String
    @State var doneName: String
    
    
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
                        Stepper(onIncrement: {
                            wantIncrementStep(wantName: wantName)
                        }, onDecrement: {
                            wantDecrementStep(wantName: wantName)
                        }, label: {
                            Text("\(UserDefaults.standard.integer(forKey: wantName))").foregroundColor(Color.gray)
                            Text("회")
                        })
                    }
                    HStack {
                        Text("탄 횟수")
                        Spacer()
                            .frame(width:50)
                        Stepper(onIncrement: {
                            doneIncrementStep(wantName: wantName, doneName: doneName)
                        }, onDecrement: {
                            doneDecrementStep(wantName: wantName, doneName: doneName)
                        }, label: {
                            Text("\(UserDefaults.standard.integer(forKey: doneName))").foregroundColor(Color.gray)
                            Text("회")
                        })
                    }
                } else {
                    HStack {
                        Text("탈 횟수")
                        Spacer()
                            .frame(width: 50)
                        Text("\(UserDefaults.standard.integer(forKey: wantName))")
                        Text("회")
                    }
                    HStack {
                        Text("탄 횟수")
                        Spacer()
                            .frame(width: 50)
                        Text("\(UserDefaults.standard.integer(forKey: doneName))")
                        Text("회")
                    }
                    
                }

            }
                
        }
            
        .navigationTitle(korName)
        .navigationBarItems(trailing: Button(editMode2==false ? "Edit" : "Save"){editMode2.toggle()})

    }
        
    }
}

func wantIncrementStep(wantName: String) {
    if UserDefaults.standard.integer(forKey: wantName) < 10 {
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: wantName)+1, forKey: wantName)
    }
}

func doneIncrementStep(wantName: String, doneName:String) {
    if UserDefaults.standard.integer(forKey: wantName) > UserDefaults.standard.integer(forKey: doneName) {
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: doneName)+1, forKey: doneName)
    }
}

func wantDecrementStep(wantName: String) {
    if UserDefaults.standard.integer(forKey: wantName) > 0 {
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: wantName)-1, forKey: wantName)
    }
}

func doneDecrementStep(wantName: String, doneName:String) {
    if UserDefaults.standard.integer(forKey: wantName) > 0 {
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: doneName)-1, forKey: doneName)
    }
}

//struct PickDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickDetailView()
//    }
//}
