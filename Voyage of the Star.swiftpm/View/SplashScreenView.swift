//
//  SplashScreenView.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 03/04/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var hueDegree : Double = 0.0
    @Binding var splashScreenOn : Bool
    var body: some View {
        ZStack{
            Image("icon")
            .resizable()
            .ignoresSafeArea()
            .hueRotation(.degrees(hueDegree))
            Text("Explore the voyage of the star!")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .bold()
                .shadow(color:.black,radius: 4)
        }
        .onAppear(){
            withAnimation(.easeIn(duration: 2.0)) {
                hueDegree = 360
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2.05){
                splashScreenOn = false
            }
        }
    }
}
