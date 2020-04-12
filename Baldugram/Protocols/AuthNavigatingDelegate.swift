//
//  AuthNavigatingDelegate.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/12/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation

protocol AuthNavigatingDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
