//
//  VideosListView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/09.
//

import SwiftUI

struct VideosListView: View {
    
    //MARK - PROPERTIES
@State var video: [VideoModel] = Bundle.main.decode(file:  "videos.json")
    let impactHaptic = UIImpactFeedbackGenerator(style: .medium)
    //MARK - BODY
    var body: some View {
       
        NavigationView {
            List{

                ForEach(video) { item in
                    NavigationLink(destination: VideoPlayerView(videos: item)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                   
                } //LIST
                }//LOOP
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Videos", displayMode: .large)
                .toolbar {
                    ToolbarItem (placement: .navigationBarTrailing){
                        Button  {
                            //Shuffle Videos
                            video.shuffle()
                            impactHaptic.impactOccurred()
                        } label: {
                                Image(systemName: "arrow.2.squarepath")
                              
                        }

                    }
                }
            }//LIST
        }//NAVIGATION
    }


struct VideosListView_Previews: PreviewProvider {
    

    static var previews: some View {
        VideosListView()
    }
}
