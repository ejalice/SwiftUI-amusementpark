//
//  PickListView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/05.
//

import SwiftUI

struct PickListView: View {
    @State var names = ["Dra", "Mega", "Bumper", "Crake", "Torna", "Pare"]
    @State var selectedName: String = ""
    @Binding var selectedSide: Int

    var body: some View {
        List {
            ForEach(names, id:\.self) { shortName in
                let result = convert(shortName: shortName)
                let want = UserDefaults.standard.integer(forKey: result.wantName)
                let done = UserDefaults.standard.integer(forKey: result.doneName)
                
                if selectedSide == 0 {
                    if want>0 {
                        NavigationLink(destination: PickDetailView(korName: result.korName, wantName: result.wantName, doneName: result.doneName)){
                            Text(result.korName)
                        }
                    }
                }
                
                else if selectedSide == 1 {
                    if want>done{
                        NavigationLink(destination: PickDetailView(korName: result.korName, wantName: result.wantName, doneName: result.doneName), label: {Text("\(result.korName)")})
                    }
                }

                else {
                    if want == done && want>0{
                        NavigationLink(destination: PickDetailView(korName: result.korName, wantName: result.wantName, doneName: result.doneName), label: {Text("\(result.korName)")})
                    }
                }
                
            } //~ForEach
        } //~List
    }//~body
}

func convert(shortName: String) -> (wantName: String, doneName: String, korName: String) {

    var wantName: String = ""
    var doneName: String = ""
    var korName: String = ""

    switch shortName {
    case "Dra":
        wantName = "wantDra"
        doneName = "doneDra"
        korName = "드라켄"
    case "Mega":
        wantName = "wantMega"
        doneName = "doneMega"
        korName = "메가스톤"
    case "Bumper":
        wantName = "wantBumper"
        doneName = "doneBumper"
        korName = "범퍼카"
    case "Crake":
        wantName = "wantCrake"
        doneName = "doneCrake"
        korName = "크라켄"
    case "Torna":
        wantName = "wantTorna"
        doneName = "doneTorna"
        korName = "토네이도"
    case "Pare":
        wantName = "wantPare"
        doneName = "donePare"
        korName = "파에톤"
    default:
        wantName = "wantDra"
        doneName = "doneDra"
        korName = "드라켄"
    }
    print("OK")
    print(type(of: wantName))
    return (wantName, doneName, korName)
}
//struct PickListView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickListView(selectedSide: 1)
//    }
//}
