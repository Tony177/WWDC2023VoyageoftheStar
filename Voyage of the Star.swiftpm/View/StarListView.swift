//
//  StarListView.swift
//  
//
//  Created by Antonio Avolio on 03/04/23.
//

import SwiftUI

struct StarListView: View {
    
    @State var orderBy : Int = 1
    @Binding var starClicked : Star
    @Binding var starChoosen : Bool
    @Binding var scaleEffectOn : Bool
    let sizeLimitWidth : CGFloat = 900
    var starOrdered : [Star] {
        switch orderBy {
        case 0:
            return starList.sorted(by: {$0.age > $1.age})
        case 1:
            return starList.sorted(by: {$0.appMagnitude < $1.appMagnitude})
        default:
            return starList.sorted(by: {$0.distance > $1.distance})
        }
    }
    var body: some View {
        GeometryReader{ geo in
            
            ZStack{
                Image("background")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(starOrdered){star in
                            Button {
                                starClicked = star
                                withAnimation(.easeIn(duration: 2)) {
                                    scaleEffectOn = true
                                }
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2){
                                    starChoosen = true
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        scaleEffectOn = false
                                    }
                                }
                            } label: {
                                VStack{
                                    Text(star.nameEng).dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .xxxLarge).bold()
                                    Image(star.imageName)
                                        .resizable()
                                        .frame(width: geo.size.width > sizeLimitWidth ? 400 : 150,height: geo.size.width > sizeLimitWidth ? 400 : 150)
                                        .blendMode(.screen)
                                    Spacer().frame(height: 50)
                                }
                            }.tint(.white)
                            Rectangle()
                                .frame(width: geo.size.width > sizeLimitWidth ? 300 : 100,height: 3)
                                .foregroundColor(.white)
                                .padding()
                        }
                        Text("To be continued ...").foregroundColor(.white).font(.system(size:50))
                    }.padding()
                }.scrollIndicators(.hidden)
                VStack(alignment: .leading){
                    Text("Click on any star to know more about it!")
                        .foregroundColor(.white)
                        .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .xxxLarge)
                    Spacer()
                    Text("Order by")
                        .foregroundColor(.white)
                        .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .xxxLarge)
                    Picker("order", selection: $orderBy) {
                        Text("Age").tag(0)
                        Text("Brightness").tag(1)
                        Text("Distance").tag(2)
                    }
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 10)
                    })
                    .background(Color.gray)
                    .pickerStyle(.segmented)
                    .dynamicTypeSize(.accessibility2)
                    
                }.padding()
                Image(starClicked.imageName)
                    .resizable()
                    .frame(width: 1,height: 1)
                    .scaleEffect(scaleEffectOn ? 1500 : 0.1)
                    .blendMode(.screen)
            }
        }
    }
}
