//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI

struct InsetGalleryView: View {
    
    //MARK - PROPERTIES
    let animal: AnimalModel
    
    //MARK - BODY
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach (animal.gallery, id: \.self ) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                    
                } //LOOP
            } //HSTACK
        } //SCROLLVIEW
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
    }
}
