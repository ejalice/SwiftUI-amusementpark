//
//  SquareView.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

struct SquareView: View {
    @State var changeView : Bool = false
    @State var isLiked: Bool = false
    var body: some View {
//        //ZStack {
////            RoundedRectangle(cornerRadius: 10)
////                .fill(Color.white)
////                .frame(width: 150, height: 170)
////                .shadow(color: .myGray, radius: 2, x: 0, y: 1)
//            VStack {
//                Image("드라켄")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150, height: 100)
//                HStack {
//                    Text("드라켄")
//                    Image(systemName: "heart.fill")
//                } //~HStack
//            }
//            .padding(.bottom, 9) //~VStack
//            .border(Color.myGray, width: 1)
//            .shadow(color: .myGray, radius: 2, x: 0, y: 2)
//        //} //~ZStack
//        Button(action: {
//            self.isTapped.toggle()
//        }) {
        //NavigationLink(destination: AttractionDetailView()) {
            //ZStack {
                VStack {
                    Button(action: {
                        self.changeView.toggle()
                    }) {
                        Image("드라켄")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 100)
                    }
                    NavigationLink(destination: AttractionDetailView(), isActive: $changeView) {EmptyView()}.disabled(true)
                    
                    HStack {
                        Text("Title")
                        Button(action: {
                            self.isLiked.toggle()
                        }){
                            Image(systemName: self.isLiked == true ? "heart.fill" : "heart")
                                .foregroundColor(Color.myRed)
                        }
                    }
                }
            //}
        //}
//            VStack {
//                Image("드라켄")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150, height: 100)
//
//                HStack {
//                    Text("드라켄")
//                    Button(action: {
//                        self.isLiked.toggle()
//                    }){
//                        Image(systemName: self.isLiked == true ? "heart.fill" : "heart")
//                            .foregroundColor(Color.myRed)
//                    }
//                }
//            }
//            .padding(.bottom, 9)
//            .border(Color.myGray, width: 1)
            //.shadow(color: .myGray, radius: 2, x: 0, y: 2)
        //}
    }
}

struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        SquareView()
    }
}
