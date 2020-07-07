//
//  Result.swift
//  mobile-challenge
//
//  Created by Edwy Lugo on 06/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case error(Error)
}
