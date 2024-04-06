//
//  SingleCardView.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 06/04/24.
//

import SwiftUI

struct SingleCard: View {
    @State var card: Card
    
    var body: some View {
        Text("Nome: \((card.name ?? ""))" as String)
            .font(.subheadline)
        AsyncImage(url: URL(string: card.img ?? UrlConstant.default_img_url)) {
            image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210, height: 300, alignment: .center)
        } placeholder: {
            ProgressView()
        }
        VStack(alignment: .center, spacing: 2) {
            Text("Descrição: \(card.text ?? "")" as String)
                .multilineTextAlignment(.center)
            Text("Ataque: \(card.attack ?? 0)" as String)
            Text("Flavor: \(card.flavor ?? "")" as String)
                .multilineTextAlignment(.center)
            Text("Mecânica(s): \(card.mechanics ?? "")" as String)
            Text("Cardset: \(card.cardSet ?? "")" as String)
            Text("Raridade: \(card.rarity ?? "")" as String)
            Text("PlayerClass: \(card.playerClass ?? "")" as String)
            Text("Custo: \(card.cost ?? 0)" as String)
            Text("Durabilidade: \(card.durability ?? 0)" as String)
            Text("Health: \(card.health ?? 0)" as String)
        }
        .padding()
    }
}
