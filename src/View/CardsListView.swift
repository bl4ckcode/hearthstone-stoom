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
    @State var cards: [CardUI] = []
    @State private var isLoading = false
    @State private var isFinished = false
    
    @StateObject var cardsListInteractor: CardsListInteractor = CardsListInteractor()
        
    var body: some View {
        NavigationView {
            List {
                ForEach(cards, id: \.id) { card in
                    GameCardView(text: .constant("\(card.text ?? "Hearthstone Card")"), image: .constant(UIImage(systemName: "star")))
                }
            }
            if !isFinished {
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.orange)
                    .foregroundColor(.cyan)
                    .onAppear {
                        loadMoreContent()
                    }
            }
        }
        .navigationTitle("Hearsthstone All Cards 2024")
        .onAppear {
            self.cardsListInteractor.presenter = CardsListPresenter(view: self)
        }
    }
    
    func loadMoreContent() {
        if !isLoading {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                cardsListInteractor.getCardsList()
                isLoading = false
                
                if cards.count > 1000 {
                    isFinished = true
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
