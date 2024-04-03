//
//  CardsListService.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import PromiseKit
import Foundation

class CardsService {
    private var httpService: BaseService

    init() {
        self.httpService = HeartsthoneRapidService()
    }

    func getCardsList() -> Promise<[Card]> {
        let url = UrlConstant.cardsList()
        return httpService.get(url: url).map { data in
            let cards: [Card] = try! JSONDecoder().decode([Card].self, from: data)
            return cards
        }
    }
    
    func singleCard(for id: String) -> Promise<Card>  {
        let url = UrlConstant.singleCard(id: id)
        return httpService.get(url: url).map { data in
            let cards: Card = try! JSONDecoder().decode(Card.self, from: data)
            return cards
        }
    }
}
