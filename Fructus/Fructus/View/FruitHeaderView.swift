//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Brunno Hofmann on 12.03.23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = false
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[5])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}