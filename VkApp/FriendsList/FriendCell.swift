//
//  FriendCell.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class FriendCell: UITableViewCell {
    
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendPhoto: UIImageView! {
        didSet {
            layer.cornerRadius = 28
            
        }
    }
    func setData (name: String, image: UIImage) {
        friendName.text = name
        friendPhoto.image = image
    }
}
