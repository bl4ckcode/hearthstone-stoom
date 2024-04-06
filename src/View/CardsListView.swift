//
//  ContentView.swift
//  Shared
//
//  Created by Carlos alves on 03/04/24.
//

import SwiftUI

protocol CardsListProtocol: AnyObject {
    func setCardsData(cards: [CardUI])
}

struct CardsList: View {
    @State var isLoading = false
    @State var isFinished = false
    
    @ObservedObject var cardsListInteractor: CardsListInteractor = CardsListInteractor()
    
    init() {
        cardsListInteractor.presenter = CardsListPresenter(view: self)
    }
        
    var body: some View {
        NavigationView {
            List(cardsListInteractor.cardsForView) { card in
                GameCardView(text: .constant(card.text),
                             imageUrl: .constant(card.img))
                    .frame(height: 150)
            }
            if !isFinished {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.orange)
                    .foregroundColor(.cyan)
                    .onAppear {
                        if !isLoading {
                            isLoading = true
                            cardsListInteractor.getCardsList()
                        }
                    }
            }
        }
        .navigationTitle("Todos Cards Hearthstone 2024!")
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
