//
//  ArrayExtension.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 05/04/24.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
