//
//  HomeView.swift
//  RestartApp
//
//  Created by Brunno Hofmann on 12.01.23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = false

    var body: some View {
        Button(action: {
            isOnboardingViewActive = true
        }){
            Text("Restart")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
