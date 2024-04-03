//
//  SingleCardInteractor.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Foundation

final class SingleCardInteractor: ObservableObject {
    @Published var presenter: SingleCardPresenter?
    
    private let cardsService = CardsService()
    
    func singleCard(id: String) {
        self.cardsService
            .singleCard(for: id)
            .done { card in
                
            }
            .catch { error in
                print(error)
            }
    }
}
