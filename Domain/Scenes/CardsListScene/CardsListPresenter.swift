//
//  CardsListPresenter.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Combine
import Foundation

protocol CardsListPresenterProtocol: AnyObject {
    func setCards(with cards: [Card])
}

final class CardsListPresenter: CardsListPresenterProtocol {
    let view: CardsList
    
    init(view: CardsList) {
        self.view = view
    }
    
    func setCards(with cards: [Card]) {
        view.cards = cards.map { CardUI(id: ObjectIdentifier(($0.cardId ?? "") as AnyObject), img: $0.img ?? "", flavor: $0.flavor ?? "", text: $0.text ?? "")}
    }
}
