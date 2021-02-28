//
//  GroupsCell.swift
//  VkApp
//
//  Created by Lera on 27.02.21.
//

import UIKit


class GroupsCell: UITableViewCell {


    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var backGroundView: BackgroundView!
    @IBOutlet weak var avatarImage: UIImageView! {
        didSet {
            layer.cornerRadius = 28
        }
    }

    func setData(name: String, avatar: UIImage) {
        groupName.text = name
        avatarImage?.image = avatar
    }

}
