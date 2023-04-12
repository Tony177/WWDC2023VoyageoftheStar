//
//  InfoView.swift
//  
//
//  Created by Antonio Avolio on 05/04/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("background")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack(alignment: .leading,spacing: 20){
                    Text("Star Info")
                        .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility5 : .accessibility1).bold()
                    Text("Name: Every star has associeted an english name and latin name")
                    Text("Age: Every star has an age expressed in million of years")
                    Text("Distance: Expressed in light year, which is a large unit of length used to express astronomical distances and is equivalent to about 9.46 trillion kilometers (9.46×10¹² km)")
                    Text("Magnitude: Magnitude is a unitless measure of the brightness of an object, the apparent one referes to the brightness of an object as it appears in the night sky., while the absolute measures the luminosity of an object as seen from a specific distance, usually 32.6 light years")
                    Text("Description: a brief description about the trivia, the story and curiosity of the selected star")
                    Spacer()
                }.foregroundColor(.white)
                    .shadow(color: .black, radius: 5)
                    .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                    .padding()
            }
        }
    }
}
