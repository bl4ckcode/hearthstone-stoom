//
//  CardsListInteractor.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Foundation
import Combine

final class CardsListInteractor: ObservableObject {
    
    private let cardsService: CardsServiceProtocol
    
    private var startIndex = 0
    private var endIndex = 100
    
    private var allCards: [Card] = []
    
    @Published var presenter: CardsListPresenter
    
    @Published var cardsForView: [CardUI] = []
    
    init(presenter: CardsListPresenter, service: CardsService = CardsService()) {
        self.presenter = presenter
        self.cardsService = service
    }
    
    func getCardsList() {
        self.cardsService
            .getCardsList()
            .done { [weak self] response in
                guard let self = self else { return }
                // Credit/JSONAny nao estao sendo utilizado pois a maioria dos cards sao AsheOfOutland mas foram mapeados pois constavam em All cards
                // Pegando apenas os 1000 primeiros cards de cada tipo pois há quase 30k cards, isso elevaria muito o custo da memória
                if self.allCards.isEmpty {
                    let array = response.mergeAshesOfOutland()
                    array.prefix(1000).forEach { asheOfOutland in
                        let cardsConverted = asheOfOutland.map { Card(from: $0) }
                        self.allCards.append(contentsOf: cardsConverted)
                        }
                } else {
                    if self.endIndex < self.allCards.count {
                        self.startIndex = self.endIndex
                        self.endIndex += 100
                    } else {
                        return
                    }
                }
                
                if !self.allCards.isEmpty {
                    self.cardsForView.append(contentsOf: self.allCards[self.startIndex...self.endIndex].map {
                        CardUI(id: ObjectIdentifier(($0.cardId ?? "") as AnyObject), cardId: $0.cardId ?? "",img: $0.img ?? UrlConstant.default_img_url, text: $0.name ?? UrlConstant.default_text_card) })
                }
            }
            .catch { error in
                print(error)
            }
    }
    
    func getCardFromID(id: String) -> Card? {
        return self.allCards.first { $0.cardId == id }
    }
}

final class CardsListPresenter: ObservableObject {
    @Published var cardsForView: [CardUI] = []
    @Published var isLoading = false
    
    func mapUiCards(cards: [CardUI]) {
        self.cardsForView.append(contentsOf: cards)
    }
}
