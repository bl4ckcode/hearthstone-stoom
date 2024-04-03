//
//  ContentView.swift
//  Shared
//
//  Created by Carlos alves on 03/04/24.
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
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let labelConstraints = [
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.trailingAnchor),
            label.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
        ]
        
        image.translatesAutoresizingMaskIntoConstraints = false
        let imageConstraints = [
            image.topAnchor.constraint(equalTo: label.bottomAnchor),
            image.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(labelConstraints + imageConstraints)
    }
}

struct GameCardView: UIViewRepresentable {
    @Binding var text: String
    @Binding var image: UIImage?
    
    func makeUIView(context: Context) -> GameCard {
        GameCard()
    }
    
    func updateUIView(_ uiView: GameCard, context: Context) {
        uiView.label.text = text
        uiView.image.image = image
    }
}

struct CardsList: View {
    var body: some View {
        VStack {
            GameCardView(text: .constant(""), image: .constant(UIImage(systemName: "star")))
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
