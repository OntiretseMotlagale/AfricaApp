//
//  HeaderView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI

struct HeaderView: View {
    let headImage: String
    let headText: String
    
    var body: some View {
        HStack (alignment: .center, spacing: 10 ) {
            Image(systemName: headImage)
                .foregroundColor(Color.accentColor)
                .imageScale(.large)
            Text(headText)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headImage: "photo.on.rectangle.fill", headText: "Wilderness in Africa" )
    }
}
