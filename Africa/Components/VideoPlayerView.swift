//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/14.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videos: VideoModel
    
    var body: some View {
    
            VStack{
                VideoPlayer(player: playVideo(fileName: videos.id, fileFormat: "mp4"))
                
                    .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8),
                    alignment: .topLeading
                    )
                
            } //VSTACK
            .navigationBarTitle(videos.name, displayMode: .inline)

        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    
    static let video: [VideoModel] = Bundle.main.decode(file: "videos.json")
    
    static var previews: some View {
        NavigationView{
            VideoPlayerView(videos: video[2])
        }
    }
}
