//
//  StarView.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 03/04/23.
//

import SwiftUI

struct StarView: View {
    @Binding var star : Star
    @Binding var starChoosen : Bool
    @Binding var scaleEffectOn : Bool
    var body: some View {
        ZStack{
            Image("background")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            Image(star.imageName)
                .resizable()
                .frame(width: 1,height: 1)
                .scaleEffect(scaleEffectOn ? 1500 : 0.1)
                .blendMode(.screen)
            VStack{
                HStack{
                    Image(star.imageName)
                        .resizable()
                        .frame(width: 400,height: 400)
                        .blendMode(.screen)
                    Spacer()
                    VStack(alignment:.leading){
                        Text(star.nameEng)
                        Text(star.nameLat)
                        Text(star.desc)
                    }.foregroundColor(.white).font(.title)
                    Spacer()
                }
                Button {
                    starChoosen = false
                } label: {
                    Text("Go back")
                }.buttonStyle(.borderedProminent)

            }
        }
    }
}
