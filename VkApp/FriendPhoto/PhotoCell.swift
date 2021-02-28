//
//  PhotoCell.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet var friendPhotos: UIImageView!
    
    func setData (image: UIImage) {
        friendPhotos.image = image
    }
    func addLikeControl() {
        let like = LikeControl(frame: CGRect(x: self.frame.size.width - 40, y: self.frame.size.height - 30, width: 38, height: 28))
        self.addSubview(like)
    }
    
}
