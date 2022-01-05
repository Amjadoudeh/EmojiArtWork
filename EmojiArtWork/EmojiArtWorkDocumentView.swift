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
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            palette
        }
    }
    // the documentBody
    var documentBody: some View {
        Color.yellow
    }
    
    // the palette
    var palette: some View {
        ScrollingEmojisView(emojis: testemojis)
    }
    
    let testEmojis = "😀😷🦠💉👻👀🐶🌲🌎🌞🔥🍎⚽️🚗🚓🚲🛩🚁🚀🛸🏠⌚️🎁🗝🔐❤️⛔️❌❓✅⚠️🎶➕➖🏳️"
    
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtWorkDocumentView(document: EmojiArtWorkDocument())
    }
}
