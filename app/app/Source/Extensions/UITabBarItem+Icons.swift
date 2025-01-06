//
//  UITabBarItem+Icons.swift
//  app
//
//  Created by Denysov Illia on 2025-01-06.
//

import UIKit

extension UITabBarItem {
    convenience init (image: UIImage?, selectedImage: UIImage?) {
        self.init()
        self.image = image?.withRenderingMode(.alwaysOriginal)
        self.selectedImage = selectedImage?.withRenderingMode(.alwaysOriginal)
        self.imageInsets = .init(top: 15, left: 0, bottom: -15, right: 0)
    }
}
