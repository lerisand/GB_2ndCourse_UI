//
//  GroupCell.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet var groupLabel: UILabel!
    @IBOutlet var groupImage: UIImageView! {
        didSet {
            layer.cornerRadius = 28
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        groupImage?.layer.cornerRadius = 30
        groupImage?.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setData(name: String, image: UIImage) {
        groupLabel.text = name
        groupImage.image = image
    }

}

