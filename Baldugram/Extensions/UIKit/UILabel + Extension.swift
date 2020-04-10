//
//  UILabel + Extension.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/8/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
    
}
