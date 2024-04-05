//
//  CardsListInteractor.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Combine

final class CardsListInteractor: ObservableObject {
    weak var presenter: CardsListPresenterProtocol?
    private let cardsService: CardsServiceProtocol
    
    private var startIndex = 0
    private var endIndex = 100
    
    private var allCards: [Card] = []
    private var cardsForView: [Card] = []
    
    init(service: CardsService = CardsService()) {
        self.cardsService = service
    }
    
    func getCardsList() {
        self.cardsService
            .getCardsList()
            .done { [weak self] response in
                guard let self = self else { return }
                
                // Credit/JSONAny nao estao sendo utilizado pois a maioria dos cards sao AsheOfOutland mas foram mapeados pois constavam em All cards
                if self.allCards.isEmpty {
                    let array = response.mergeAshesOfOutland()
                    array.forEach { asheOfOutland in
                        let cardsConverted = asheOfOutland.map { Card(from: $0) }
                        self.allCards.append(contentsOf: cardsConverted)
                        }
                } else {
                    if self.endIndex < self.allCards.count {
                        self.startIndex = self.endIndex
                        self.endIndex += 100
                    }
                }
                
                self.cardsForView.append(contentsOf: self.allCards[self.startIndex...self.endIndex])
                
                self.presenter?.setCards(with: self.cardsForView)
            }
            .catch { error in
                print(error)
            }
    }
}
