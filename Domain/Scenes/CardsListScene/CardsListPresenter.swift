//
//  CardsListPresenter.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Combine
import Foundation

final class CardsListPresenter: ObservableObject {
    var view: CardsList
    
    init(view: CardsList) {
        self.view = view
    }
    
    func updateView() {
        view.isLoading = false
        view.isFinished = true
    }
}
