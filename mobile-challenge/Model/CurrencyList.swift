//
//  List.swift
//  mobile-challenge
//
//  Created by Edwy Lugo on 04/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import Foundation

struct CurrencyList : Decodable {
    var success : Bool?
    var terms: String?
    var privacy: String?
    var currencies: [String:String]?

    enum CodingKeys: String, CodingKey {
        case success
        case terms
        case privacy
        case currencies
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        success = try container.decode(Bool.self, forKey: .success)
        terms = try container.decode(String.self, forKey: .terms)
        privacy = try container.decode(String.self, forKey: .privacy)
        currencies = try container.decode([String:String].self, forKey: .currencies)
    }
}
