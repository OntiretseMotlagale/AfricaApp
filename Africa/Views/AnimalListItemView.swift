//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import SwiftUI

struct AnimalListItemView: View {
    
    //MARK - PROPERTIES
    let animal: AnimalModel
   
    //MARK - BODY
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
           
            
            VStack (alignment: .leading , spacing: 10) {
                Text(animal.name)
                    .foregroundColor(Color.accentColor)
                    .fontWeight(.bold)
                    .font(.title2)
                
                Text(animal.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //:VSTACK
        }//:HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
   static let animals: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
        
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
