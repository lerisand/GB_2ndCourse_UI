//
//  BackgroundView.swift
//  VkApp
//
//  Created by Lera on 27.02.21.
//

import UIKit

class BackgroundView: UIView {
    
    var shadowColor:UIColor = UIColor.black
    var shadowRadius:CGFloat = 5
    var shadowOpacity:Float = 1
        
    override func draw(_ rect: CGRect) {
        layer.shadowColor = shadowColor.cgColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
    }

}

