//
//  MainView.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import SwiftUI

struct MainView: View {
    @State var starClicked: Star = Star()
    @State var scaleEffectOn : Bool = false
    @State var starChoosen : Bool = false
    @State var offsetValue : CGFloat = 0.0
    var body: some View {
        ZStack{
            if(starChoosen){
                StarView(star:$starClicked,starChoosen: $starChoosen,scaleEffectOn:$scaleEffectOn)
            } else {
                StarListView(starClicked: $starClicked, starChoosen: $starChoosen, scaleEffectOn: $scaleEffectOn,offsetValue: $offsetValue)
            }
        }
    }
}
