//
//  hearthstoneCardsApp.swift
//  Shared
//
//  Created by Carlos alves on 03/04/24.
//

import SwiftUI

@main
struct hearthstoneCardsApp: App {
    var body: some Scene {
        WindowGroup {
            createCardsListView()
        }
    }
    
    func createCardsListView() -> CardsList {
        let interactor = CardsListInteractor(presenter: CardsListPresenter())
        var view =  CardsList(cardsListInteractor: interactor)
        view.cardsListInteractor = interactor
        
        return view
    }
}
