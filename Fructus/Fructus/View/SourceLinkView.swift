//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Brunno Hofmann on 12.03.23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipédia", destination: URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
