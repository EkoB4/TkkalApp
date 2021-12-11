//
//  MainMagazine.swift
//  tkkalApp
//
//  Created by VB on 11.12.2021.
//

import SwiftUI

struct MainMagazine: View {
    var body: some View {
        GeometryReader{geo in
            TkkalImageView()
                .frame(width:geo.size.width*1)
            Text("2023e 1 ay ")
                .font(.title)
                .frame(width: geo.size.width*1,height: geo.size.height*0.6, alignment: .center
                ).foregroundColor(.white)
            DividerView(label:"Oku").foregroundColor(.white)
                .frame(height:geo.size.height*0.7)
            Text("enean id urna tempus, congue nulla eget, lobortis velit. Sed enim metus, placerat convallis turpis et, vestibulum blandit massa. Fusce volutpat leo magna, nec tincidunt justo porta id. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam posuere pellentesque urna in efficitur. Morbi eget arcu pellentesque, pulvinar mauris vel, fermentum tellus. Sed pellentesque malesuada orci sed facilisis. Cras vitae neque libero. Nam condimentum, ipsum sed porta sodales, tellus lacus fringilla nulla, in posuere ex ligula a ante. Curabitur viverra, nunc in vehicula venenatis, elit urna tempor lorem, nec eleifend justo ex vel nibh.")
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(height:geo.size.height*1.2)
            GoOnDetailsView(label: "Pdfi oku ")
                .frame(width:geo.size.width*1,height:geo.size.height*1.8)
        }.background(Color("SecondScreen"))
    }
}

struct MainMagazine_Previews: PreviewProvider {
    static var previews: some View {
        MainMagazine()
    }
}
