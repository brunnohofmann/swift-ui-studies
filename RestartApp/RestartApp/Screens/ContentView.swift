//
//  ContentView.swift
//  RestartApp
//
//  Created by Brunno Hofmann on 12.01.23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = true

    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnboardingView()
            }else{
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.5), value: isOnboardingViewActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
