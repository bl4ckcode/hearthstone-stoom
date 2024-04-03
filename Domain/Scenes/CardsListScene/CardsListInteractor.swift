//
//  CardsListInteractor.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Foundation

final class CardsListInteractor: ObservableObject {
    @Published var presenter: CardsListPresenter?
    
    private let cardsService = CardsService()
    
    func getCardsList() {
        self.cardsService
            .getCardsList()
            .map { cards in
                
            }
            .catch { error in
                print(error)
            }
    }
}
