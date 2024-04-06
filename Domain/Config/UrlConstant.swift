//
//  Config.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Foundation

struct UrlConstant {
    private static let HOST = "https://omgvamp-hearthstone-v1.p.rapidapi.com"
    
    static let headers: [String: String] = [
        "X-RapidAPI-Key" : "66369eed22msh9bd8f188d5a0cf1p1c471bjsn48d126cea408",
        "X-RapidAPI-Host" : "omgvamp-hearthstone-v1.p.rapidapi.com"
    ]
    
    static func cardsList() -> String {
        return "\(UrlConstant.HOST)/cards"
    }

    static func singleCard(id: String) -> String {
        return "\(UrlConstant.HOST)/cards/\(id)"
    }
    
    static let default_img_url = "https://cdn.hearthstonetopdecks.com/wp-content/uploads/2014/06/card-back-default-201x300.png"
    
    static let default_text_card = "Esse card não possui texto, perdoe-me ;("
}
