//
//  ContentView.swift
//  Fructus
//
//  Created by Brunno Hofmann on 28.01.23.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)){
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
