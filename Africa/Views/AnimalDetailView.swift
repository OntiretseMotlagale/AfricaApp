//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI

struct AnimalDetailView: View {
    
    //MARK - PROPERTIES
    let animal: AnimalModel
    //MARK - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack (alignment: .center, spacing: 20) {

                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                //TITLE
                if #available(iOS 16.0, *) {
                    Text(animal.name)
                        .font(.largeTitle)
                        .padding(.vertical, 8)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .background(
                            Color.accentColor
                                .frame(height: 8)
                                .offset(y: 24)
                        )
                } else {
                    // Fallback on earlier versions
                }
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    
                //GALLERY
                Group () {
                    HeaderView(headImage: "photo.on.rectangle", headText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group () {
                    HeaderView(headImage: "questionmark.circle", headText: "Did you know ?")
                    
                    InsertFactView(animals: animal)
                }
                .padding(.horizontal)
                
                //DESCRIPTION
                Group {
                    HeaderView(headImage: "info.circle", headText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                    
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeaderView(headImage: "map", headText: "National Parks")
                    
                    InsertMapView()
                }
                
                // LINK
                Group {
                    HeaderView(headImage: "books.vertical", headText: "Learn More")
                    
                    WebLink(animal: animal)
                }
                .padding(.horizontal)
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//:SCROLLVIEW
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animal: [AnimalModel] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animal[3])
    }
}
