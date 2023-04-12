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
    @Binding var offsetValue : CGFloat
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
        NavigationStack{
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
                                        Text(star.nameEng).dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large).bold()
                                        Image(star.imageName)
                                            .resizable()
                                            .frame(width: geo.size.width > sizeLimitWidth ? 350 : 150,height: geo.size.width > sizeLimitWidth ? 350 : 150)
                                            .blendMode(.screen)
                                        Spacer().frame(height: 50)
                                    }
                                }.tint(.white)
                                Rectangle()
                                    .frame(width: geo.size.width > sizeLimitWidth ? 300 : 100,height: 3)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            Text("To be continued ...")
                                .foregroundColor(.white)
                                .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                        }.padding()
                    }
                    .scrollIndicators(.hidden)
                    VStack(alignment: .leading){
                        HStack{
                            Text("Click on any star to know more about it!")
                                .foregroundColor(.white)
                                .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                            Spacer()
                            NavigationLink {
                                InfoView()
                            } label: {
                                Image(systemName: "info.circle").dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                            }
                        }
                        Spacer()
                        Text("Order by")
                            .foregroundColor(.white)
                            .dynamicTypeSize(geo.size.width > sizeLimitWidth ? .accessibility2 : .large)
                        Picker("order", selection: $orderBy) {
                            Text("Age").tag(0)
                            Text("Brightness").tag(1)
                            Text("Distance").tag(2)
                        }
                        .preferredColorScheme(.dark)
                        .pickerStyle(.segmented)
                    }.padding()
                    Image(starClicked.imageName)
                        .resizable()
                        .frame(width: 1,height: 1)
                        .scaleEffect(scaleEffectOn ? 1500 : 0.1)
                        .blendMode(.screen)
                    Image("rocket")
                        .resizable(resizingMode: .stretch)
                        .ignoresSafeArea()
                        .offset(x: offsetValue)
                }.onAppear(){
                    if(offsetValue == 0.0){
                        withAnimation(.easeIn(duration: 2)) {
                            offsetValue = geo.size.width + 100
                        }
                    }
                }
            }
        }
    }
}

struct StarListView_Previews: PreviewProvider {
    static var previews: some View {
        StarListView(starClicked: Binding.constant(starList.first!), starChoosen: Binding.constant(true), scaleEffectOn: Binding.constant(false),offsetValue: Binding.constant(10000.0)).previewInterfaceOrientation(.landscapeRight)
    }
}
