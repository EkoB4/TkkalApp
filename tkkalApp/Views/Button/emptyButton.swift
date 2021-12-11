//
//  emptyButton.swift
//  tkkalApp
//
//  Created by VB on 10.12.2021.
//

import SwiftUI
struct GoOnDetailsView: View {
    @State var animation : Bool = false
    let label : String
    var body: some View {
        VStack{
            Text(label)
                .bold()
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(animation ? Color("FirstColor") : Color("SecondColor"))
                .cornerRadius(20)
                .multilineTextAlignment(.center)
                .onAppear(perform: addAnimation)
        }
    }
    func addAnimation(){
        guard !animation else {return}
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            withAnimation(Animation.easeInOut(duration: 1).repeatForever()){
                animation.toggle()
            }
        }
    }
}
/*struct emptyButton_Previews: PreviewProvider {
    static var previews: some View {
       GoOnDetailsView().previewLayout(.sizeThatFits)
    }
}*/




