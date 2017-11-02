//
//  UIImageViewShadow.swift
//  Park.ly
//
//  Created by Petr on 02.11.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import UIKit

class UIImageViewShadow: UIImageView {

    override func awakeFromNib() {
        self.layer.shadowRadius = 20
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
