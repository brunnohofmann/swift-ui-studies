//
//  CircleGroupsView.swift
//  RestartApp
//
//  Created by Brunno Hofmann on 13.01.23.
//

import SwiftUI

struct CircleGroupsView: View {
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
            .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        
    }
}

struct CircleGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupsView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
