//
//  Double+Extensions.swift
//  mobile-challenge
//
//  Created by Edwy Lugo on 06/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import Foundation

extension Double {
    mutating func roundWith(precision digits: Int) -> Self {
        let divisor = pow(10.0, Double(digits))
        return (self * divisor).rounded() / divisor
    }
}
