//
//  SelfConfiguringCell.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/10/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
