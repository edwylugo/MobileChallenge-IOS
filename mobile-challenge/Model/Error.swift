//
//  Error.swift
//  mobile-challenge
//
//  Created by Edwy Lugo on 06/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import Foundation

struct CurrencyError: Decodable {
    var success: Bool?
    var error: ErrorCode?
}

struct ErrorCode: Decodable {
    var code: Int?
    var info: String?

    enum CodingKeys: CodingKey {
        case code
        case info
    }

    init(from decoder: Decoder) throws {
        let decoder = try decoder.container(keyedBy: CodingKeys.self)
        code = try decoder.decode(Int.self, forKey: .code)
        info = try decoder.decode(String.self, forKey: .info)
    }
}
