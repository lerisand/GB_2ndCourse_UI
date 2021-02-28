//
//  Friend.swift
//  VkApp
//
//  Created by Lera on 24.02.21.
//

import Foundation
import UIKit

struct User: Equatable {
  
    var name: String
    var avatar: UIImage
    var photosLibrary: [UIImage]
    
    init(name: String, avatar: UIImage, photosLibrary: [UIImage]) {
        self.name = name
        self.avatar = avatar
        self.photosLibrary = photosLibrary
    }
}

