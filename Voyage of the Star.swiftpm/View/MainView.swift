//
//  MainView.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import SwiftUI

struct MainView: View {
    @State var scaleEffectOn : Bool = false
    @State var starClicked: Star = Star()
    @State var starChoosen : Bool = false
    var body: some View {
        ZStack{
            if(starChoosen){
                StarView(star:$starClicked,starChoosen: $starChoosen,scaleEffectOn:$scaleEffectOn)
            } else {
                StarListView(starClicked: $starClicked, starChoosen: $starChoosen, scaleEffectOn: $scaleEffectOn)
            }
        }
    }
}

struct MainViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        MainView().previewInterfaceOrientation(.landscapeRight)
    }
}
