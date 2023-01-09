//
//  InsertFactView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI

struct InsertFactView: View {
    
    //MARK - PROPERTIES
    let animals: AnimalModel
    //MARK - BODY
    var body: some View {
        
        GroupBox {
            TabView () {
                ForEach(animals.fact, id: \.self) { facts in
                    Text(facts)
                } //:LOOP
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 150, idealHeight: 168, maxHeight: 180)
            
        }//: BOX
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animal: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        InsertFactView(animals: animal[4])
        
            .previewLayout(.sizeThatFits)
    }
}
