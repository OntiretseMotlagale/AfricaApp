//
//  ContentView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import SwiftUI

struct ContentView: View {
    let animal: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    var body: some View {
       
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animal) { animals in
                    NavigationLink( destination:
                    AnimalDetailView(animal: animals)){
                        AnimalListItemView(animal: animals)
                    }
                 
                }
            } //: LIST
            
            .navigationTitle("Africa".uppercased())
        }//NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
