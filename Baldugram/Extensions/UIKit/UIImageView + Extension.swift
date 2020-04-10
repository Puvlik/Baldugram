//
//  UIImageView + Extension.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/8/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
}
