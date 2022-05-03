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
    
    @Binding var picture_code: String
    @Binding var name: String
    
    
    var body: some View {

                VStack {
                    Button(action: {
                        self.changeView.toggle()
                    }) {
                        Image("\(picture_code)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 100)
                    }
                    NavigationLink(destination: AttractionDetailView(), isActive: $changeView) {EmptyView()}.disabled(true)
                    
                    HStack {
                        Text("\(name)")
                        Button(action: {
                            self.isLiked.toggle()
                        }){
                            Image(systemName: self.isLiked == true ? "heart.fill" : "heart")
                                .foregroundColor(Color.myRed)
                        }
                    }
                }
        
    }
}

//struct SquareView_Previews: PreviewProvider {
//    static var previews: some View {
//        SquareView()
//    }
//}
