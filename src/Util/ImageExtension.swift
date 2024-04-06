//
//  ImageExtension.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 05/04/24.
//

import UIKit

extension UIImage {
    func resize(_ size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        let factor = self.size.width / self.size.height

        self.draw(in: CGRect(x: (size.width - size.height * factor) / 2, y: 0, width: size.height * factor, height: size.height))
        let imageResult = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return imageResult!
    }

    class func from(_ strUrl: String, sizeOfResize: CGSize?, success: @escaping (_ image: UIImage?) -> Void) {
        if let url = URL(string: strUrl), let data = try? Data(contentsOf: url) {
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    if let size = sizeOfResize {
                        success(image.resize(size))
                    } else {
                        success(image)
                    }
                }
            }
        }
    }
}
