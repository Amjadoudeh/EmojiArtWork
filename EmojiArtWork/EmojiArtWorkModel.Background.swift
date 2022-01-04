//
//  EmojiArtWorkModel.Background.swift
//  EmojiArtWork
//
//  Created by Amjad Oudeh on 04.01.22.
//

import Foundation

extension EmojiArtWorkModel {
    
    // the background could be blank or link (url) or ImageData(typical image)
    
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
    
        // making the url an optoinal -> so if there is an URL , it will display it, but if not it will return blank
        var url: URL? {
            switch self {
            case .url(let url): return url
            default: return nil
            }
        }
        
        // making the imageData an optoinal -> so if there is an imageData , it will display it, but if not it will return blank
        var imageData: Data? {
            switch self {
            case .imageData(let data): return data
            default: return nil
            }
        }
        
    }
}
