//
//  ContentView.swift
//  Shared
//
//  Created by Carlos alves on 03/04/24.
//

import SwiftUI

struct CardsList: View {
    @State var isLoading = false
    @ObservedObject var cardsListInteractor: CardsListInteractor
        
    var body: some View {
        NavigationView {
            List(cardsListInteractor.cardsForView, id: \.id) { card in
                if !isLoading {
                    ProgressView(label: {
                        Text("Carregando as cartas ;) Isso pode demorar um pouco...")
                            .font(.caption)
                    })
                        .hoverEffect()
                }
                GameCardView(text: .constant(card.text),
                         imageUrl: .constant(card.img))
                .frame(height: 150)
                .onAppear {
                    if let lastId = cardsListInteractor.cardsForView.last?.id , card.id == lastId {
                        cardsListInteractor.getCardsList()
                    }
                }
            }
            .onAppear {
                cardsListInteractor.getCardsList()
            }
            .navigationTitle("Cards Hearthstone")
        }
    }

}

extension View {
    @ViewBuilder func isHidden(_ isHidden: Bool) -> some View {
        if isHidden {
            self.hidden()
        } else {
            self
        }
    }
}
