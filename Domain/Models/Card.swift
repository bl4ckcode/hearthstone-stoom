//
//  Card.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

/**
 {
       "cardId": "HERO_11bpt",
       "dbfId": 78164,
       "name": "Carniçal Frágil",
       "cardSet": "Basic",
       "type": "Minion",
       "rarity": "Free",
       "cost": 1,
       "attack": 1,
       "health": 1,
       "text": "<b>Investida</b>\\nNo final do seu turno, este lacaio morre.",
       "artist": "Vlad Botos",
       "race": "Undead",
       "playerClass": "Death Knight",
       "img": "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/cf2381f82a76db875e82c18dbc05cc9488ea566842d2c9febefd03cbe25ccc2d.png",
       "locale": "ptBR",
       "mechanics": [
         {
           "name": "Investida"
         }
       ]
     }*/

import Foundation

struct Card: Codable {
    var cardId: String?
    var name: String?
    var img: String?
    var type: String?
    var rarity: String?
    var attack: Int?
    var cost: Int?
    var health: Int?
    var text: String?
    var flavor: String?
    var cardSet: String?
    var mechanics: [Mechanic]?
    var playerClass: String?
    var spellSchool: String?
    var durability: Int?
}
