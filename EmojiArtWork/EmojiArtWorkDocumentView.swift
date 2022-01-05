//
//  ContentView.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 03.01.22.

// The View :) //

import SwiftUI

struct EmojiArtWorkDocumentView: View {
    // have to added the ViewModel as @ObservedObject first
    @ObservedObject var document: EmojiArtWorkDocument
    
    // change the size of the Emojis
    let defualEmojiFontSize: CGFloat = 40
    
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            palette
        }
    }
    // the documentBody
    var documentBody: some View {
        ZStack {
            Color.yellow
            ForEach(document.emojis) { emoji in
                Text(emoji.text)
                    .font(.system(size: fontSize(for: emoji)))
                    .position(position(for: emoji))
            }
        }
    }
    
    // a function for the Size - fontSize
    private func fontSize(for emoji: EmojiArtWorkModel.Emoji) -> CGFloat {
        CGFloat(emoji.size)
    }
    
    // a function for the position
    private func position(for emoji: EmojiArtWorkModel.Emoji) -> CGPoint {
        
    }
    
    // a function to convert from the Emoji coordinates to my UI view coordinates
    private func convertFromEmojiCoordinates(_ location: (x: Int, y: Int)) -> CGPoint {
        let center = 
        return CGPoint(
            x:center.x + CGFloat(location.x),
            y:center.y + CGFloat(location.y)
        )
    }
    
    
    // the palette
    var palette: some View {
        ScrollingEmojisView(emojis: testEmojis)
            .font(.system(size: defualEmojiFontSize))
    }
    
    let testEmojis = "😀😷🦠💉👻👀🐶🌲🌎🌞🔥🍎⚽️🚗🚓🚲🛩🚁🚀🛸🏠⌚️🎁🗝🔐❤️⛔️❌❓✅⚠️🎶➕➖🏳️"
    
}

struct ScrollingEmojisView: View {
    
    let emojis: String
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map { String($0)}, id: \.self) {emoji in
                    Text(emoji)
                    
                }
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtWorkDocumentView(document: EmojiArtWorkDocument())
    }
}
