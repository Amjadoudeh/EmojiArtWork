//
//  EmojiArtWorkDocument.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 04.01.22.
//
// THe ViewModel //

// because it's a part of the UI so we import SwiftUI
import SwiftUI

class EmojiArtWorkDocument: ObservableObject {
    
    @Published private(set) var emojiArtWork: EmojiArtWorkModel
    
    init() {
        emojiArtWork = EmojiArtWorkModel()
    }
    
    var emojis: [EmojiArtWorkModel.Emoji] { emojiArtWork.emojis }
    var background: EmojiArtWorkModel.Background { emojiArtWork.background }
    
    // MARK: - Intent(s)
    
    // a function to set up a background
    func setBackground(_ background: EmojiArtWorkModel.Background) {
        emojiArtWork.background = background
    }
    
    // a function to add an Emoji
    func addEmoji(_ emoji: String, at location: (x:Int, y:Int), size: CGFloat) {
        emojiArtWork.addEmoji(emoji, at: location, size: Int(size))
    }
    
}
