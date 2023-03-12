//
//  FructusApp.swift
//  Fructus
//
//  Created by Brunno Hofmann on 28.01.23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
