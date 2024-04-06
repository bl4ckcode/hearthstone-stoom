//
//  CardsListPresenter.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Combine
import Foundation
import SwiftUI

final class CardsListPresenter: ObservableObject {
    @Published var cardsForView: [CardUI] = []
    
    var view: CardsList?
    
    init(view: CardsList) {
        self.view = view
    }
    
    func updateView() {
        DispatchQueue.main.async {
            view?.isLoading = false
        }
    }
}
