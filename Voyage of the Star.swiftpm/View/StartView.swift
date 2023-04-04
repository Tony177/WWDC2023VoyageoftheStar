//
//  StartView.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import SwiftUI

struct StartView: View {
    @State var splashScreenOn : Bool = true
    var body: some View {
        if (splashScreenOn) {
            SplashScreenView(splashScreenOn: $splashScreenOn)
        } else {
            MainView()
        }
    }
}
