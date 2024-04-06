//
//  ContentView.swift
//  Shared
//
//  Created by Carlos alves on 03/04/24.
//

import SwiftUI
import TTProgressHUD

struct CardsList: View {
    @State var hudVisible = true
    @ObservedObject var cardsListInteractor: CardsListInteractor
        
    var body: some View {
        NavigationView {
            List(cardsListInteractor.cardsForView) { card in
                NavigationLink(destination: createDetailCardView(id: card.cardId)) {
                    GameCardView(text: .constant(card.text),
                             imageUrl: .constant(card.img))
                    .frame(height: 150)
                    .onAppear {
                        if let lastId = cardsListInteractor.cardsForView.last?.id , card.id == lastId {
                            cardsListInteractor.getCardsList()
                        }
                    }
                }
            }
            .onAppear {
                cardsListInteractor.getCardsList()
            }
            .navigationTitle("Cards Hearthstone")
        }
    }
    
    func createDetailCardView(id: String) -> AnyView {
        if let card = cardsListInteractor.getCardFromID(id: id) {
            return AnyView(SingleCard(card: card))
        } else {
            return AnyView(EmptyView())
        }
    }

}
