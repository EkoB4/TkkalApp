//
//  FirstPageView.swift
//  tkkalApp
//
//  Created by VB on 9.12.2021.
//

import SwiftUI

struct FirstPageView: View {
    var body: some View {
        GeometryReader{ geo in
            ScrollView{
        VStack{
            MagazineImageView()
                .frame(width:geo.size.width*1,height: geo.size.height*0.5)
            Text("2023e 1 ay!")
                .font(.title)
                .foregroundColor(.white)
                .bold().frame(height:geo.size.height*0.3)
            Text("Tkkal Dergisi 1.Sayi")
                .foregroundColor(.white)
                .font(.title)
                .frame(height:geo.size.height/100)
            Divider()
                .frame(width:200)
                .background(Color.white)
                .frame(height:geo.size.height/40)
            Text("Lorem Ipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır. ")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(height:geo.size.height*0.2)
            NavigationLink {
                MainMagazine()
            } label: {
                GoOnDetailsView(label: "gutds")
            }
        }
            }
        }
    }
}

struct FirstPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        FirstPageView().background(Color("BackgroundColor"))
        }
    }
}
