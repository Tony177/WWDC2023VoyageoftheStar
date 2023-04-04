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
        Image("background")
            .resizable(resizingMode: .stretch)
            .ignoresSafeArea()
        VStack{
            HStack{
                Spacer()
                Text("Order by:")
                    .foregroundColor(.white)
                    .font(.system(size:50))
                Picker("order", selection: $orderBy) {
                    Text("Age").tag(0)
                    Text("Brightness").tag(1)
                    Text("Distance").tag(2)
                }.frame(width: 130).tint(.white)
            }
            Spacer()
        }
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
                            Text(star.nameEng).font(.title).bold()
                            Image(star.imageName)
                                .resizable()
                                .frame(width: 400,height: 400)
                                .blendMode(.screen)

                            
                            Spacer().frame(height: 50)
                        }
                    }.tint(.white)
                    Rectangle().frame(width: 300,height: 3).padding().foregroundColor(.white)
                }
                Text("To be continued ...").foregroundColor(.white).font(.system(size:50))
            }.padding()
        }.scrollIndicators(.hidden)
        Image(starClicked.imageName)
            .resizable()
            .frame(width: 1,height: 1)
            .scaleEffect(scaleEffectOn ? 1500 : 0.1)
            .blendMode(.screen)
    }
}
