//
//  MainView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideosListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
    
            
        } //:Tab
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
