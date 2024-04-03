//
//  Config.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Foundation

struct UrlConstant {
    private static let HOST = "https://omgvamp-hearthstone-v1.p.rapidapi.com"
    
    static func cardsList() -> String {
        return "\(UrlConstant.HOST)/cards"
    }

    static func singleCard(id: String) -> String {
        return "\(UrlConstant.HOST)/cards/\(id)"
    }
}
