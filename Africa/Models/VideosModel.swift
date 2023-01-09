//
//  VideosModel.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    
let id: String
let name: String
let headline: String
    
    var thubmnail: String {
        "video-\(id)"
    }
}
