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
    
    @State var fakeWant: Int = 0
    @State var fakeDone: Int = 0
    
    
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
                        Stepper(value: $fakeWant) {
                            Text("\(changeWant(wantName:wantName, fakeWant: fakeWant))").foregroundColor(Color.gray)
                            Text("회")
                        }
                    }
                    HStack {
                        Text("탄 횟수")
                        Spacer()
                            .frame(width:50)
                        Stepper(value: $fakeDone, in: 0...UserDefaults.standard.integer(forKey: doneName)) {
                            Text("\(changeDone(doneName: doneName, fakeDone: fakeDone))").foregroundColor(Color.gray)
                            Text("회")
                        }
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


func changeWant(wantName: String, fakeWant: Int) -> Int {
    var defaultWant = UserDefaults.standard.integer(forKey: wantName)
    var finalWant = defaultWant + fakeWant
    
    UserDefaults.standard.set(finalWant, forKey: wantName)
    
    return finalWant
}

func changeDone(doneName: String, fakeDone: Int) -> Int {
    var defaultDone = UserDefaults.standard.integer(forKey: doneName)
    var finalDone = defaultDone + fakeDone
    
    UserDefaults.standard.set(finalDone, forKey: doneName)
    
    return finalDone
}

//struct PickDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickDetailView()
//    }
//}
