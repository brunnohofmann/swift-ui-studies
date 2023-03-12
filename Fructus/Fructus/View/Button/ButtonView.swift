//
//  StartButtonView.swift
//  Fructus
//
//  Created by Brunno Hofmann on 28.01.23.
//

import SwiftUI

struct ButtonView: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            HStack(spacing: 8) {
                Text(label)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        }
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(label: "Start", action: {
            print("test")
        })
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
