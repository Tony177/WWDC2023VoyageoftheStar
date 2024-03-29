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
        GeometryReader{ geo in
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
                        Button {
                            starChoosen = false
                        } label: {
                            HStack{
                                Image(systemName: "chevron.left")
                                Text("Back")
                            }.dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                        }.buttonStyle(.borderless)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Image(star.imageName)
                            .resizable()
                            .frame(width: geo.size.width > sizeLimitWidth ? 350 : 150,height: geo.size.width > sizeLimitWidth ? 350 : 150)
                            .blendMode(.screen)
                        Spacer()
                        VStack(alignment:.leading){
                            Text("Name: \(star.nameEng)").dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility4 : .xxxLarge)
                            Text("Latin Name: \(star.nameLat)")
                            Text("Distance: \(star.distance.removeZerosFromEnd()) light years")
                            Text("Apparent Magnitude: \(star.appMagnitude.removeZerosFromEnd())")
                            Text("Age: \(star.age.formatAge()) years")
                            Spacer().frame(height: 30)
                            Text(star.desc)
                        }.foregroundColor(.white)
                            .frame(maxWidth: geo.size.width*0.7)
                            .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}
