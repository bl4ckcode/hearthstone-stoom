//
//  GameCardView.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 05/04/24.
//

import SwiftUI

final class GameCard: UIView {
    let label = UILabel()
    let image = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureView() {
        backgroundColor = .systemBackground
        addSubview(label)
        addSubview(image)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        let labelConstraints = [
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 8),
            label.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ]
        
        image.translatesAutoresizingMaskIntoConstraints = false
        let imageConstraints = [
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            image.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            image.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 8)
        ]
        
        NSLayoutConstraint.activate(labelConstraints + imageConstraints)
    }
}

struct GameCardView: UIViewRepresentable {
    @Binding var text: String
    @Binding var imageUrl: String?
    
    func makeUIView(context: Context) -> GameCard {
        GameCard()
    }
    
    func updateUIView(_ uiView: GameCard, context: Context) {
        uiView.label.translatesAutoresizingMaskIntoConstraints = false
        uiView.label.textAlignment = .left
        uiView.label.numberOfLines = 0
        uiView.label.font = .systemFont(ofSize: 17, weight: .heavy)
        uiView.label.text = text

        if let imageUrl = imageUrl {
            UIImage.from(imageUrl, sizeOfResize: CGSize(width: 80, height: 120)) { image in
                uiView.image.image = image
                uiView.image.contentMode = .center
            }
        }
    }
}
