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
    let sizeLimitWidth : CGFloat = 900
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
                            }.font(.title)
                            
                        }.buttonStyle(.borderless)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Image(star.imageName)
                            .resizable()
                            .frame(width: geo.size.width > sizeLimitWidth ? 400 : 150,height: geo.size.width > sizeLimitWidth ? 400 : 150)
                            .blendMode(.screen)
                        Spacer()
                        VStack(alignment:.leading){
                            Text("Name: \(star.nameEng)").font(.title)
                            Text("Latin Name: \(star.nameLat)").font(.title3)
                            Text("Distance: \(star.distance.removeZerosFromEnd()) light years")
                            Text("Apparent Magnitude: \(star.appMagnitude.removeZerosFromEnd())")
                            Text("Age: \(star.age.removeZerosFromEnd()) milion of years")
                            Spacer().frame(height: 30)
                            Text(star.desc)
                        }.foregroundColor(.white).frame(maxWidth: geo.size.width*0.7)
                        
                    }
                    Spacer()
                    
                }
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(star: Binding.constant(starList[0]), starChoosen: Binding.constant(true), scaleEffectOn:  Binding.constant(false)).previewInterfaceOrientation(.landscapeRight)
    }
}
