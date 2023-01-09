//
//  InsetLink.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI

struct WebLink: View {
    
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct WebLink_Previews: PreviewProvider {
    
    static let animals: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    
    static var previews: some View {
        WebLink(animal: animals[2])
        
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
