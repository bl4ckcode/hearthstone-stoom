//
//  CustomProgressView.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 06/04/24.
//

import SwiftUI
import TTProgressHUD

struct CustomProgressView: View {
    @Binding var hudVisible: Bool
    @State var hudConfig = TTProgressHUDConfig(title: "Carregando cards", caption: "Isso pode demorar um pouco...", minSize: CGSize(width: .max, height: .max), shadowColor: .black)
    
    var body: some View {
        TTProgressHUD($hudVisible, config: hudConfig)
    }
}
