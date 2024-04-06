//
//  ImageHelper.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 05/04/24.
//

import UIKit

class ImageHelper {
    static let `default` = ImageHelper()

    func getImage(_ url: String!, forSize size: CGSize?, success: @escaping (_ image: UIImage?) -> Void) {
        
        UIImage.from(url, sizeOfResize: size) { image in
            success(image)
        }
    }
}
