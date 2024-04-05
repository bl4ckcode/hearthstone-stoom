//
//  CardsListService.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import PromiseKit
import Foundation

protocol CardsServiceProtocol {
    func getCardsList() -> Promise<CardResponse>
    func singleCard(for id: String) -> Promise<Card>
}

final class CardsService: CardsServiceProtocol {
    private var httpService: BaseService

    init() {
        self.httpService = HeartsthoneRapidService()
    }

    private var cardResponseCache: Promise<CardResponse>?
    func getCardsList() -> Promise<CardResponse> {
        if let cardResponseCache = self.cardResponseCache {
            return cardResponseCache
        } else {
            let url = UrlConstant.cardsList()
            cardResponseCache = httpService.get(url: url).map { data in
                let cards: CardResponse = try! JSONDecoder().decode(CardResponse.self, from: data)
                return cards
            }
            return cardResponseCache!
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
