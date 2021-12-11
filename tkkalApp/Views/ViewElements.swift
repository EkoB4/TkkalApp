//
//  ViewElements.swift
//  tkkalApp
//
//  Created by VB on 9.12.2021.
//

import SwiftUI

struct MagazineImageView: View {
    var body: some View {
            HStack{
                Image("MainImage")
                    .resizable()
                    .clipped()
                    .frame(width:150 , height: 200)
            }
    }
}
struct TkkalImageView : View{
    var body: some View{
        HStack{
        Image("TkkalLogo")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color("BackgroundColor"),lineWidth: 4))
        }
    }
}

struct DividerView : View {
    let horizontalPadding : CGFloat
    let color : Color
    let label : String
    init(label: String, horizontalPadding: CGFloat = 20, color : Color = .white){
        self.label = label
        self.color = color
        self.horizontalPadding = horizontalPadding
        
    }
    var body: some View{
        HStack{
            line
            Text(label)
            line
        }
    }
    
    var line: some View {VStack{Divider().background(color)}.padding(horizontalPadding)
        
    }
}


struct ViewElements_Previews: PreviewProvider {
    static var previews: some View {
        MagazineImageView().previewLayout(.sizeThatFits)
        TkkalImageView().previewLayout(.sizeThatFits)
    }
}
