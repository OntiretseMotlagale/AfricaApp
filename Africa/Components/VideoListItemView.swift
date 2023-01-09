//
//  InsetVideosViews.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/13.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK - PROPERTIES
    var video: VideoModel

    //MARK - BODY
    var body: some View {
        
        HStack {
            
            ZStack {
                Image(video.thubmnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(20)
                 
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            
      
        }
    }
}

struct InsetVideosViews_Previews: PreviewProvider {
    
    static var videos: [VideoModel] = Bundle.main.decode(file: "videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[1])
        
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
