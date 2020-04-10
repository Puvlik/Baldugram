//
//  StackView + Extension.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/8/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
    
}
