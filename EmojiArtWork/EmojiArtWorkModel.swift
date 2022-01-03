//
//  EmojiArtWorkModel.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 03.01.22.
//

import Foundation

struct EmojiArtWorkModel {
    
    // our model have 2 parts the background and the Emojis
    var background: Background
    var emojis = [Emoji]()
    
    struct Emoji {
        // text for the emoji shape
        let text: String
        // the position and the size
        var x: Int
        var y: Int
        var size: Int
    }
    // the background could be blank or link (url) or ImageData(typical image)
    
    enum Background {
        case blank
        case url
        case imageData
    }
}
