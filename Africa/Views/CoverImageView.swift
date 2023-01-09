//
//  CoverImageView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import SwiftUI

struct CoverImageView: View {
    
    //: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode(file: "covers.json")
    
    //: BODY
    
    var body: some View {
        TabView {
            ForEach (coverImages[0 ..< 5]) {item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            
            } //:LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}
//:PREVIEW

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
        
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
