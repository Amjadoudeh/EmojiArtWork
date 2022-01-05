//
//  EmojiArtWorkApp.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 03.01.22.
//

import SwiftUI

@main
struct EmojiArtWorkApp: App {
    let document = EmojiArtWorkDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtWorkDocumentView(document: document)
        }
    }
}
