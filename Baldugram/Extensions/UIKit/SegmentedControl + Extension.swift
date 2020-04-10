//
//  SegmentedControl + Extension.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/9/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

extension UISegmentedControl {
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
