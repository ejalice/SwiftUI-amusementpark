//
//  AttractionData.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/03.
//

import Foundation
import SwiftUI



struct AttractionData: Identifiable, Hashable {
    let id: UUID
    var name: String
    var picture_code: String
    var place: String
    var people: String
    var height: String
    var descript: String

    init(id: UUID = UUID(), name: String, picture_code: String, place: String, people: String, height: String, descript: String) {
        self.id = id
        self.name = name
        self.picture_code = picture_code
        self.place = place
        self.people = people
        self.height = height
        self.descript = descript
    }
}

extension AttractionData {
    static let sampleData: [AttractionData] =
    [
        //1
        AttractionData(name: "드라켄", picture_code: "드라켄", place: "드라켄벨리", people: "24", height: "135cm~200cm", descript: "90도 수직 하강"),
        //2
        AttractionData(name: "메가드롭", picture_code: "메가드롭", place: "엑스존", people: "20", height: "140cm~200cm", descript: "지상 70m 하강"),
        //3
        AttractionData(name: "범퍼카", picture_code: "범퍼카", place: "놀이기구", people: "2", height: "125cm~200cm", descript: "보호자 동승시 110cm 이상 이용가능"),
        //4
        AttractionData(name: "크라크", picture_code: "크라크", place: "드라켄벨리", people: "30", height: "135cm~200cm", descript: "360도 회전"),
        //5
        AttractionData(name: "토네이도", picture_code: "토네이도", place: "엑스존", people: "24", height: "145cm~200cm", descript: "왕복 230도 상승"),
        //6
        AttractionData(name: "파에톤", picture_code: "파에톤", place: "엑스존", people: "32", height: "145cm~200cm", descript: "인버티드 롤러코스터")
    ]
}
