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
    
}
