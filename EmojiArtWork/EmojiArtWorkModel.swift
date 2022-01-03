//
//  EmojiArtWorkModel.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 03.01.22.
//

import Foundation

struct EmojiArtWorkModel {
    
    // our model have 2 parts the background and the Emojis
    var background =  Background.blank
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        // text for the emoji shape
        let text: String
        // the position and the size
        var x: Int
        var y: Int
        var size: Int
        let id: Int
        
        
        // to make the id accessable we have to create an init has the exact same vars and asigin the valuse exactly the same as well. so we make fileprivate
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int){
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    init() { }
    // a function to add Emoij to the Model
    private var uniqueEmojiId = 0
    mutating func addEmoji(_ text: String, at location: (x:Int , y:Int), size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x:  location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
    
    // the background could be blank or link (url) or ImageData(typical image)
    
    enum Background {
        case blank
        case url
        case imageData
    }
}
